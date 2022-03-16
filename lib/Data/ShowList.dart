import 'package:flutter/material.dart';

Widget dataList(String title, String subtitle, String image, double horizont, double vertic,double height,double width,double imgheight,double imgwidth) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizont,vertical: vertic),
    child: InkWell(
      onTap: (){},
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Image.asset(image,height: imgheight,width: imgwidth,fit:BoxFit.fill,),
            SizedBox(height: 10,),
            Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            Text(subtitle,style: TextStyle(fontSize: 15,color: Colors.grey),)],
        ),
      ),
    ),
  );
}
