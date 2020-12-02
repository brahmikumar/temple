import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
//import '../dashboard.dart';
import 'otp.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.stretch,

            children: [
              Expanded(

                child: Container(
                  child: Image.asset('assets/aum-logo.JPG'),
                ),
              ),

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
                      margin: EdgeInsets.only(top: 40),
                      decoration:BoxDecoration(
                          border: Border.all(width: 1,color:Colors.grey)
                      ),

                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/20,
                            width: MediaQuery.of(context).size.width/4.2,
                            padding: EdgeInsets.only(top:0),
                            decoration:BoxDecoration(
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

                            ),
                          ),
                          Expanded(

                              child: Container(
                                height:MediaQuery.of(context).size.height/20,
                                padding: EdgeInsets.only(left: 5),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(

                                      hintText: 'Mobile Number',
                                      hintStyle: TextStyle(fontSize: 16.0*MediaQuery.textScaleFactorOf(context),color:Colors.grey),
                                      border: InputBorder.none,
                                    //contentPadding: EdgeInsets.only(left:10),

                                  ),
                                ),
                              )
                          ),


                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/12),

                        child: FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context,'/otp');
                          },
                          color: Color(0xffA10E1B),

                          //padding: EdgeInsets.symmetric(vertical: 14),
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
                                    )),
                                // can add more TextSpans here...
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
      ),
    );
  }
}
