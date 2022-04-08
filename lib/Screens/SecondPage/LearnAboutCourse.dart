import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LearnAboutCourse extends StatelessWidget {
  const LearnAboutCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth>995)
        return showInRow();
      else return showInColumn();
    });
  }
}

class showInRow extends StatelessWidget {
  const showInRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80,top: 30),
      child: Container(
        alignment: Alignment.topLeft,
        height: 160,
        width: 700,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade800)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("What you'll learn",
                style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.check),
                    SizedBox(width: 5,),
                    Text("Create their own Python Programs",maxLines: 2,),
                  ],
                ),
                SizedBox(width: 30,),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.check),
                    SizedBox(width: 5,),
                    Text("Become an experienced Python Programmer",maxLines: 2,),
                  ],
                )
              ],),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(FontAwesomeIcons.check),
                  SizedBox(width: 5,),
                  Text("Parse the Web and Create their own Games"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class showInColumn extends StatelessWidget {
  const showInColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80,top: 30),
      child: Container(
        height: 170,
        width: MediaQuery.of(context).size.width*0.80,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade800)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("What you'll learn",
                style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(FontAwesomeIcons.check),
                  SizedBox(width: 5,),
                  Text("Create their own Python Programs"),
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.check),
                  SizedBox(width: 5,),
                  Text("Become an experienced Python Programmer"),
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.check),
                  SizedBox(width: 5,),
                  Text("Parse the Web and Create their own Games"),
                ],
              ),
            ],
          ),
        ),
      ),
    );;
  }
}

