import 'package:d_rakto_app/blooddonorform.dart';
import 'package:d_rakto_app/homepage.dart';
import 'package:d_rakto_app/variables.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:get/get.dart';

//this is the 3rd page of this app. where user can set their profile photo and password
//for click photo on tap in line no 46 //problem sign up button alignment in incorrect on rorate view
//for photo from gallery on tap in line no 62
//1st textfield in line no 86 //problem in textfield bottom border color
//2nd textfield in line no  97
//for sign up button on tap in line no 110
class PP extends StatefulWidget {
  const PP({Key? key}) : super(key: key);

  @override
  State<PP> createState() => _PPState();
}

class _PPState extends State<PP> {

  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  File? _image;
  Future cameraImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = image as File?;
    });
  }

  Future galleryImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 80,
                    child: _image == null
                        ? Text("no image")
                        : Image.file(_image as File),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      "????????? ???????????????",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      cameraImage();
                    },
                    color: HexColor('#DF1010'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      "????????? ???????????? ?????????",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      galleryImage();
                    },
                    color: HexColor('#DF1010'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                  controller: emailcontroller,
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
                    labelText: '???-????????????',
                    hintText: "Enter your email address.",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    hintStyle: TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: passwordcontroller,
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
                      labelText: "???????????????????????????",
                      hintText: "???????????????????????????",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                      hintStyle: TextStyle(color: Colors.black45),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
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
                      labelText: "?????????????????? ?????????",
                      hintText: "?????????????????? ?????????",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                      hintStyle: TextStyle(color: Colors.black45),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    // padding: EdgeInsets.only(top: 10.0),
                    height: 45,
                    width: 160,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        "???????????? ??????",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>HomePage2())
                        );
                      },
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}