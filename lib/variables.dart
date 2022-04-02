import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

var userCollection =FirebaseFirestore.instance.collection("UserInformation");