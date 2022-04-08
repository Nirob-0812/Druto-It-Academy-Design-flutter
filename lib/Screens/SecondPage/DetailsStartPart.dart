import 'dart:js';
import 'dart:ui';
import 'package:better_player/better_player.dart';
import 'package:drutoit/Pages/DetailsOfCourse.dart';
import 'package:drutoit/Screens/SecondPage/ShowVideo.dart';
import 'package:drutoit/Widgets/OnHovarMethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class DetailsStartPart extends StatelessWidget {
  const DetailsStartPart({Key? key}) : super(key: key);

  List<Widget> DetailsFirstContent(double width) {
    return <Widget>[HeadingOfCourse(width), VideoSection(width)];
  }

  List<Widget> DetailsFirstContentInRow(double width) {
    return <Widget>[
      VideoSection(width),
      HeadingOfCourse(width),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800)
        return Row(
            children: DetailsFirstContent(constraints.biggest.width / 3));
      else
        return Column(
            children: DetailsFirstContentInRow(constraints.biggest.width));
    });
  }
}

class HeadingOfCourse extends StatelessWidget {
  double width;

  HeadingOfCourse(this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: (width * 2),
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.only(left: 60, top: 40, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Learn Dart: The Complete Dart Programming Course",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Learn A-Z everything about Dart, from the basics, to advanced topics like Dart GUI, Dart Data Analysis, and more! ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "5.0",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                OnHovarMethod(builder: ((hoverProperty) {
                  final underline =
                      hoverProperty ? TextDecoration.underline : null;
                  final bold = hoverProperty ? FontWeight.bold : null;
                  return Text(
                    "(1,488 ratings)",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: bold,
                        decoration: underline),
                  );
                })),
                Text(
                  " 11,993 students",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "created by",
                  style: TextStyle(color: Colors.white),
                ),
                OnHovarMethod(builder: ((hoverProperty) {
                  final underline =
                      hoverProperty ? TextDecoration.underline : null;
                  final bold = hoverProperty ? FontWeight.bold : null;
                  return Text(
                    " Habibur Rahman,BD",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: bold,
                        decoration: underline),
                  );
                })),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: 18,
                  color: Colors.white,
                ),
                Text(
                  "Last updated 9/2020",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  FontAwesomeIcons.globe,
                  size: 18,
                  color: Colors.white,
                ),
                Text(
                  " English",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  FontAwesomeIcons.closedCaptioning,
                  size: 18,
                  color: Colors.white,
                ),
                Text(
                  " English",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class VideoSection extends StatelessWidget {
  final width;

  VideoSection(this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      height: 400,
      width: width,
      child: Stack(
        children: [
          Container(
            height: 300,
            width: width * 0.9,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/flutter.jpg",)),
                color: Colors.white,
                border: Border.all(color: Colors.white)),
          ),
          Positioned(
              top: 130,
              right: width * 0.4,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                    showDialog(context: (context), builder: (context){
                      return ShowVideo(videoindex: 0, video: "assets/videos/natural.mp4",);
                    });
                },
                child: Icon(Icons.play_arrow, color: Colors.black, size: 40,),
              )
          )
        ],
      ),
    );
  }
}
