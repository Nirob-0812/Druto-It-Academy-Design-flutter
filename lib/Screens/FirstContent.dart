import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FirstContent extends StatelessWidget {
  const FirstContent({Key? key}) : super(key: key);
  List<Widget> ContentSlide(double width){
    return <Widget>[
      Container(
        width: width,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.only(top: 60,left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Are you ready to learn !",style: TextStyle(color: Colors.red),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Learn With Fun on",style: TextStyle(color: Colors.black,fontSize: 25,
                      fontWeight: FontWeight.bold),),
                  Text(" any",style: TextStyle(color: Colors.orange.shade900,fontSize: 25,
                      fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 5,),
              Text("schedule",style: TextStyle(color: Colors.orange.shade900,fontSize: 25,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("Get that ready for anything feeling with more than 5,000 courses, "
                  "Professional Certificates, and degrees from world-class universities and companies.",
                style: TextStyle(color: Colors.black),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(150, 40),
                    primary: Colors.deepOrange,
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),
                  child: Text("Get Started"))
            ],
          ),
        ),
      ),
      Image.asset("assets/images/flutter-app-developer.jpg",width: width,height: 400,)
    ];
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth>800)
        return Row(
          children: ContentSlide(constraints.biggest.width/2),
        );
      else
        return  Column(
          children: ContentSlide(constraints.biggest.width),
        );
    });
  }
}
