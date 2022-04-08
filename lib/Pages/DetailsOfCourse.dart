import 'package:drutoit/Screens/FirstPage/AppBar.dart';
import 'package:drutoit/Screens/FirstPage/BottomContent.dart';
import 'package:drutoit/Screens/FirstPage/SecondList.dart';
import 'package:drutoit/Screens/SecondPage/CourseOverView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Screens/SecondPage/DetailsStartPart.dart';

class DetailsOfCourse extends StatelessWidget {
  const DetailsOfCourse({Key? key}) : super(key: key);
  static const route = "DetailsOfCourse";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              DetailsStartPart(),
              SizedBox(
                height: 20,
              ),
              CourseOverView(),
              SizedBox(height: 200,),
              SecondList(),
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
