import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bottomnavigation.dart';
import 'profile_name.dart';
import 'family_member.dart';

class Profile extends StatelessWidget {
  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {

    void startNewTransaction(BuildContext ctx) {
      showModalBottomSheet(
          context: ctx,
          builder: (_) {
            return GestureDetector(
              onTap: () {},
              child: Container(

                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: SingleChildScrollView(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Add Family Member",style: TextStyle(
                        fontWeight:FontWeight.w600,
                        fontSize: 18.0
                      ),),
                      SizedBox(height: MediaQuery.of(context).size.width*0.05,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, ),
                            ),
                          labelText: 'Full Name',
                          hintText: '',
                          isDense: true,
                          contentPadding: EdgeInsets.all(10)
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*0.04,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Date of Birth',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*0.04,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Place of Birth',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*0.04,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Birth Star',
                            isDense: true,
                            contentPadding: EdgeInsets.all(10)
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*0.04,),
                      Center(
                        child: FlatButton(
                          child: Text('Add',style:TextStyle(color:Colors.white),),
                          color: Color(0xffA10E1B),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  ),
                ),),
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
              ProfileDetail(context),
              FamilyMember(context),
              //Family(),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: FlatButton(
                    color:Color(0xffA10E1B),
                    textColor: Colors.white,
                    onPressed: (){
                      startNewTransaction(context);
                    }, child:Text('Add Family Member')),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomNav(),
    );
  }
}
