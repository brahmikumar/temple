import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'otp.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';



class Login extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static const routeName = '/login';

  // change mobile number status
  bool mobileValidate = true;
  bool isRequestProcessing = false;
  void updateMobileValidateStatus(bool status) {
    setState(() {
      mobileValidate = status;
    });
  }

  // Send request for verify mobile number registered/not
  Future verifyMobileNumber(context) async{
    final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');
    if(response.statusCode == 200){
      isRequestProcessing = false;
      print("Response: "+ response.body);
      if(jsonDecode(response.body)['title'] != "quidem molestiae enim"){
        print("Goto Registration page");
        Navigator.pushNamed(context,'/otp');
      }
      else{
        Navigator.pushNamed(context,'/otpForRegistration');
      }
    }else{
      isRequestProcessing = false;
      throw Exception('Failed to load album');
    }
    print("Response: "+ jsonDecode(response.body)['title']);
  }

  // validate mobile number
  var selectedCountryCode = '';
  validateMobileNumber(context){
    CircularProgressIndicator();
    if(myController.text == ""){
      updateMobileValidateStatus(false);
      print("Enter Mobile Nubmer"+ mobileValidate.toString());
      /*Fluttertoast.showToast(
          msg: "Enter Mobile Number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.black,
          fontSize: 16.0
      );*/
    }
    else{
      updateMobileValidateStatus(true);
      print("validate mobile number: ${selectedCountryCode} ${myController.text}");
      verifyMobileNumber(context);
      isRequestProcessing = true;
    }
  }

  // Update country code
  final myController = TextEditingController();
  void _onCountryChange(CountryCode countryCode) {
    selectedCountryCode = countryCode.toString();
  }

  @override
  initState() {
    super.initState();
    FlutterStatusbarcolor.setStatusBarColor(Color(0xffecb80d));
    isRequestProcessing = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Login', style: TextStyle(
          color: Color(0xffaa2430),
        )),

        backgroundColor: Colors.white,

        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.sort_sharp),
          onPressed: () => Scaffold.of(context).openDrawer(),
          color: Colors.black,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            (isRequestProcessing) ?
              CircularProgressIndicator(
                backgroundColor: Colors.blue,
                strokeWidth: 3,
              )
              :
              Text(""),
            SizedBox(height: MediaQuery.of(context).size.height/12),
            Expanded(
              child: Container(
                child: Image.asset('./assets/images/aum-logo.jpeg'),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      child: Text('Enter Your Mobile Number',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize:20.0*MediaQuery.textScaleFactorOf(context),
                        ),)
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/12),
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1,color:Colors.grey)
                    ),

                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/20,
                          width: MediaQuery.of(context).size.width/4.2,
                          //padding: EdgeInsets.only(top:5),
                          decoration:BoxDecoration(
                            //borderRadius: BorderRadius.circular(30),
                            border: Border(
                                right: BorderSide(width: 1.0, color: Colors.grey)
                            ),
                          ),
                          child: CountryCodePicker(
                              initialSelection: 'IN',
                              showCountryOnly: true,
                              alignLeft: true,
                              flagWidth: 20,
                              textStyle: TextStyle(
                                fontSize: 12*MediaQuery.textScaleFactorOf(context),
                              ),
                              onChanged: _onCountryChange,
                              onInit: (code){
                                print("on init ${code.name} ${code.dialCode} ${code.name}");
                                selectedCountryCode = code.dialCode;
                              }
                          ),
                        ),
                        Expanded(
                            child: Container(
                              height:MediaQuery.of(context).size.height/20,
                              //height:40,
                              //padding: EdgeInsets.only(top:10),
                              padding: EdgeInsets.only(left: 5),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  //contentPadding: EdgeInsets.only(top: 0),
                                  hintText: 'Mobile Number',
                                  hintStyle: TextStyle(fontSize: 16.0*MediaQuery.textScaleFactorOf(context),color:Colors.grey),
                                  border: InputBorder.none,
                                ),
                                controller: myController,
                                onChanged: (value) => updateMobileValidateStatus(true),
                                onSubmitted: (value) => validateMobileNumber(context),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (!mobileValidate) ? Text("Enter Mobile Number", style: TextStyle(color: Color(0xffA10E1B))) : Text("")
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/10),
                      child: FlatButton(
                        onPressed: (){
                          //Navigator.pushNamed(context,'/otp');
                          validateMobileNumber(context);
                        },
                        color: Color(0xffA10E1B),
                        child: Text('Continue',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                  ),

                  Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/40),
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            text: 'By signing in you agree to our ',
                            style:TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Terms and Conditions',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                  )
                              ),
                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
