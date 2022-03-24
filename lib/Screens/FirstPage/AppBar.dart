import 'package:drutoit/Widgets/OnHovarMethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class CustomAppBar extends StatelessWidget {
   const CustomAppBar({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return LayoutBuilder(builder: (context, constraints){
       if(constraints.maxWidth>800)
         return WebAppBar();
       else
         return MobileAppBar();
     });
   }
 }


class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Druto-IT Academy",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade900),
            ),
            Row(
              children: [
                OnHovarMethod(
                  builder: (bool hoverProperty) {
                    final color = hoverProperty ? Colors.deepOrange : null;
                    final bold = hoverProperty ? FontWeight.bold : null;
                    return Text( "Home",  style: TextStyle(fontSize: 15, color: color,fontWeight: bold),
                    );
                  },
                ),
                SizedBox(width: 15,),
                OnHovarMethod(
                  builder: (bool hoverProperty) {
                    final color = hoverProperty ? Colors.deepOrange : null;
                    final bold = hoverProperty ? FontWeight.bold : null;
                    return Text( "Courses",  style: TextStyle(fontSize: 15, color: color,fontWeight: bold),
                    );
                  },
                ),
                SizedBox(width: 15,),
                OnHovarMethod(
                  builder: (bool hoverProperty) {
                    final color = hoverProperty ? Colors.deepOrange : null;
                    final bold = hoverProperty ? FontWeight.bold : null;
                    return Text( "Blog",  style: TextStyle(fontSize: 15, color: color,fontWeight: bold),
                    );
                  },
                ),
                SizedBox(width: 15,),
                OnHovarMethod(
                  builder: (bool hoverProperty) {
                    final color = hoverProperty ? Colors.deepOrange : null;
                    final bold = hoverProperty ? FontWeight.bold : null;
                    return Text( "Others",  style: TextStyle(fontSize: 15, color: color,fontWeight: bold),
                    );
                  },
                ),
                SizedBox(width: 15,),
                 ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                       primary: Colors.deepOrange,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                       )
                     ),
                     child: Text("Sign in",style: TextStyle(color: Colors.white))
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        child: Column(
          children: [
            Text(
              "Druto-IT Academy",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange.shade900),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnHovarMethod(
                  builder: (bool hoverProperty) {
                    final color = hoverProperty ? Colors.deepOrange : null;
                    final bold = hoverProperty ? FontWeight.bold : null;
                    return Text( "Home",  style: TextStyle(fontSize: 15, color: color,fontWeight: bold),
                    );
                  },
                ),
                SizedBox(width: 15,),
                OnHovarMethod(
                  builder: (bool hoverProperty) {
                    final color = hoverProperty ? Colors.deepOrange : null;
                    final bold = hoverProperty ? FontWeight.bold : null;
                    return Text( "Courses",  style: TextStyle(fontSize: 15, color: color,fontWeight: bold),
                    );
                  },
                ),
                SizedBox(width: 15,),
                OnHovarMethod(
                  builder: (bool hoverProperty) {
                    final color = hoverProperty ? Colors.deepOrange : null;
                    final bold = hoverProperty ? FontWeight.bold : null;
                    return Text( "Blog",  style: TextStyle(fontSize: 15, color: color,fontWeight: bold),
                    );
                  },
                ),
                SizedBox(width: 15,),
                OnHovarMethod(
                  builder: (bool hoverProperty) {
                    final color = hoverProperty ? Colors.deepOrange : null;
                    final bold = hoverProperty ? FontWeight.bold : null;
                    return Text( "Others",  style: TextStyle(fontSize: 15, color: color,fontWeight: bold),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
