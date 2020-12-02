import 'package:aum/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'dashboard.dart';

class OtpScreen extends StatefulWidget {
  static const routeName = '/otp';
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  FocusNode pin5FocusNode;
  FocusNode pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    pin6FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget pinbox() {
      return Form(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        nextField(value, pin2FocusNode);
                      },
                      decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 15.0,left: 5.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      focusNode: pin2FocusNode,
                      textAlign: TextAlign.center,
                      onChanged: (value) => nextField(value, pin3FocusNode),
                      decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 15.0,left: 5.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      focusNode: pin3FocusNode,
                      textAlign: TextAlign.center,
                      onChanged: (value) => nextField(value, pin4FocusNode),
                      decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 15.0,left: 5.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      focusNode: pin4FocusNode,
                      textAlign: TextAlign.center,
                      onChanged: (value) => nextField(value, pin5FocusNode),
                      decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 15.0,left: 5.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      focusNode: pin5FocusNode,
                      textAlign: TextAlign.center,
                      onChanged: (value) => nextField(value, pin6FocusNode),
                      decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 15.0,left: 5.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      focusNode: pin6FocusNode,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        if (value.length == 1) {
                          pin6FocusNode.unfocus();
                          // Then you need to check is the code is correct or not
                        }
                      },
                      decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(bottom: 15.0,left: 5.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset('assets/aum-logo.JPG'),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          child: TabBar(
                            indicator: UnderlineTabIndicator(
                                borderSide: BorderSide(
                                    width: 5, color: Color(0xffA10E1B))),
                            tabs: [
                              Tab(
                                child: Text("Login with M_PIN",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal)),
                              ),
                              Tab(
                                child: Text("Login with OTP",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60.0,
                        child: TabBarView(
                          children: [
                            pinbox(),
                            pinbox(),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(30),
                          width: double.infinity,
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed(MyApp.routeName);
                            },
                            color: Color(0xffA10E1B),
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Center(
                            child: Text.rich(
                              TextSpan(
                                text: 'By signing in you agree to our ',
                                style: TextStyle(color: Colors.black),
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
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

