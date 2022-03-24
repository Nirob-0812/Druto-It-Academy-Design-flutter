import 'package:drutoit/Data/DataModel.dart';
import 'package:flutter/material.dart';

class FirstList extends StatelessWidget {
  List<Widget>dataList(double widthOfContainer){
    return <Widget>[
      Container(
        height: 200,
        width: widthOfContainer,
        child: Column(
          children: [
            InkWell(onTap: (){},child: Image.asset("assets/images/topic1.png",height:120,width:150,fit:BoxFit.fill,)),
            SizedBox(height: 10,),
            Text("1500+ Topic",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            Text("Learning Analysis",style: TextStyle(fontSize: 15,color: Colors.grey),)],
        ),
      ),
      Container(
        height: 200,
        width: widthOfContainer,
        child: Column(
          children: [
            InkWell(onTap: (){},child: Image.asset("assets/images/student1.jpg",height:120,width:150,fit:BoxFit.fill,)),
            SizedBox(height: 10,),
            Text("1500+ Topic",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            Text("Learning Analysis",style: TextStyle(fontSize: 15,color: Colors.grey),)],
        ),
      ),Container(
        height: 200,
        width: widthOfContainer,
        child: Column(
          children: [
            InkWell(onTap: (){},child: Image.asset("assets/images/token.png",height:120,width:150,fit:BoxFit.fill,)),
            SizedBox(height: 10,),
            Text("K+ Test Token",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            Text("Learning Analysis",style: TextStyle(fontSize: 15,color: Colors.grey),)],
        ),
      ),
      Container(
        height: 200,
        width: widthOfContainer,
        child: Column(
          children: [
            InkWell(onTap: (){},child: Image.asset("assets/images/images.jpg",height:120,width:150,fit:BoxFit.fill,)),
            SizedBox(height: 10,),
            Text("2000+ Student",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            Text("Learning Analysis",style: TextStyle(fontSize: 15,color: Colors.grey),)],
        ),
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth>800)
      {
        return Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: dataList(constraints.biggest.width/4),
          ),
        );
      }
      else return Padding(
        padding: const EdgeInsets.only(top: 60,bottom: 20),
        child: Column(
          children: dataList(constraints.biggest.width),
        ),
      );
    });
  }
}