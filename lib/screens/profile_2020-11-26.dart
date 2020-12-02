import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bottomnavigation.dart';
import 'profile_name.dart';
import 'family_member.dart';
//import '../screens/famili.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final nameController = TextEditingController();
  final birthController = TextEditingController();
  final starController = TextEditingController();
  final gothramController = TextEditingController();
  final addressController = TextEditingController();
  final dobController = TextEditingController();

  String profileName = "Lakshmi";
  String bPlace = "Colombo, Srilanka";
  bool _validateName = false;
  DateTime _selectedDate;
  final _formKey = GlobalKey<FormState>();

  void presentDatePicker() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (pickedDate == null) {
      return;
    }

    setState(() {
      _selectedDate = pickedDate;
    });
  }

  updateProfile() {
    setState(() {
      profileName = nameController.text;
      bPlace = birthController.text;
    });
  }



  Widget editNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Edit",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            //errorText: _validateName ? 'Can not be empty':null,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'Full Name',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      TextFormField(
                        controller: dobController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter DOB';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Date of Birth',
                          isDense: true,
                          contentPadding: EdgeInsets.all(10)
                        ),
                        onTap: (){
                          print("select date: ");
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2019, 1),
                            lastDate: DateTime(2021, 12),
                          ).then((pickedDate) {
                            //do whatever you want
                            print("selected date: "+ pickedDate.toString());
                            dobController.text = pickedDate.toString();
                          });
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      TextFormField(
                        controller: birthController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter place';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Place of Birth',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      TextFormField(
                        controller: starController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter birth star';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Birth Star',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      TextFormField(
                        controller: gothramController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter gothram';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Gothram',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      TextFormField(
                        controller: addressController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter address';
                          }
                          return null;
                        },
                        maxLines: 2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Address',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Center(
                        child: FlatButton(
                          child: Text(
                            'Update',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Color(0xffA10E1B),
                          onPressed: () {
                            // setState(() {
                            //   if(nameController.text.isEmpty){
                            //     _validateName=true;
                            //     print("change state..." + _validateName.toString());
                            //   }
                            //   else {
                            //     _validateName=false;
                            //     //updateProfile();
                            //
                            //   }
                            // });
                            final isValid = _formKey.currentState.validate();
                            if (!isValid) {
                              return;
                            }
                            updateProfile();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    void startNewTransaction(BuildContext ctx) {
      showModalBottomSheet(
          context: ctx,
          builder: (_) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Add Family Member",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'Full Name',
                            hintText: '',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Date of Birth',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Place of Birth',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Birth Star',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Center(
                        child: FlatButton(
                          child: Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Color(0xffA10E1B),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Color(0xffA10E1B),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width / 5,
                color: Color(0xffA10E1B),
              ),
              Container(
                child: Stack(
                  overflow: Overflow.visible,
                  fit: StackFit.loose,
                  children: [
                    Container(
                      color: Color(0xffFAFAFA),
                      //width: double.infinity,
                      padding: EdgeInsets.only(right: 30),
                      alignment: Alignment.centerRight,
                      height: 50,
                      child: SizedBox(
                        width: 100,
                        child: OutlineButton(
                          onPressed: () => {
                            editNewTransaction(context),
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Icon(Icons.edit), Text('Edit')],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -50,
                      left: 30,
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        padding: const EdgeInsets.all(1.0), // borde width
                        decoration: new BoxDecoration(
                          color: Color(0xffA10E1B), // border color
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 50,
                          //child: Image.asset('assets/user.png'),
                          backgroundImage: AssetImage('assets/images/user.jpeg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xffFAFAFA),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        profileName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600]),
                              ),
                              Text('+94 9900881100',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600]),
                              ),
                              Text('lakshmi.jayakumaran@gmail.com',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500))
                            ],
                          )),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[600]),
                            ),
                            Text(
                                '427/25 Samagi Mawatha, Hokandara\n Colombo 10030',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Date of Birth',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[600]),
                                  ),
                                  Text('12-SEP-1983',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Birth Star',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[600]),
                                  ),
                                  Text('Vishaka',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500))
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Birth Place',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[600]),
                                  ),
                                  Text(bPlace,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gothram',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[600]),
                                  ),
                                  Text('Kaundinya',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500))
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              FamilyMember(context),
              //Family(),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: FlatButton(
                    color: Color(0xffA10E1B),
                    textColor: Colors.white,
                    onPressed: () {
                      startNewTransaction(context);
                    },
                    child: Text('Add Family Member')),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
