import 'package:drutoit/Screens/FirstPage/AppBar.dart';
import 'package:drutoit/Screens/FirstPage/BottomContent.dart';
import 'package:drutoit/Screens/FirstPage/Conclution.dart';
import 'package:drutoit/Screens/FirstPage/FirstContent.dart';
import 'package:drutoit/Screens/FirstPage/FirstList.dart';
import 'package:flutter/material.dart';

import '../Screens/FirstPage/SecondList.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const route="HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              FirstContent(),
              FirstList(),
              Container(
                child: Text("Online Courses",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              SecondList(),
              SizedBox(height: 15,),
              Conclution(),
              Container(
                width: double.infinity,
                color: Colors.black87,
                child: BottomContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
