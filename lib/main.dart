import 'package:drutoit/Modals/VideoModal.dart';
import 'package:drutoit/Pages/DetailsOfCourse.dart';
import 'package:drutoit/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/SecondPage/ShowVideo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>videos(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "MontserratAlternates",
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomePage.route,
        routes: {
          HomePage.route:(context)=>HomePage(),
          DetailsOfCourse.route:(context)=>DetailsOfCourse(),
        },
      ),
    );
  }
}
