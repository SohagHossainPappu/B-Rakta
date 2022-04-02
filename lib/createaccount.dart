import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_rakto_app/profilepicandpassword.dart';
import 'package:d_rakto_app/variables.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

//this is the 2nd page of this app wher user give their personal information.
//create account title alignment is not correct and next button position in rorate form not correct
class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  TextEditingController username=TextEditingController();
  TextEditingController phonenumber=TextEditingController();
  TextEditingController userage=TextEditingController();
  TextEditingController bloodgroup=TextEditingController();
  TextEditingController useradress=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                ),
                Text(
                  'Create Account',
                  style: GoogleFonts.specialElite(
                      color: HexColor('#DF1010'), fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: username,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    labelText: 'Name',
                    hintText: "Enter your name.",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    hintStyle: TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: phonenumber,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    labelText: 'Phone Number',
                    hintText: "Enter your phone number.",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    hintStyle: TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      child: TextField(
                        controller: userage,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: HexColor('#DF1010'),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: HexColor('#DF1010'),
                            ),
                          ),
                          labelText: 'Age',
                          hintText: "Age.",
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          hintStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: 70,
                      width: 170,
                      child: TextField(
                        controller: bloodgroup,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: HexColor('#DF1010'),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: HexColor('#DF1010'),
                            ),
                          ),
                          labelText: 'Blood Group',
                          hintText: "Blood Group.",
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          hintStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: useradress,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: HexColor('#DF1010'),
                      ),
                    ),
                    labelText: 'Address',
                    hintText: "Your address.",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    hintStyle: TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.only(top: 8.0),
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        "Next",
                        style: GoogleFonts.specialElite(
                            color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        Get.to(()=>PP());
                      },
                      color: HexColor('#DF1010'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
