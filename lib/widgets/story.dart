import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:provider/provider.dart';
class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int index  =Provider.of<MyProvider>(context).Storylist.length ;
    return Container(
      height: 120,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount:index,
        itemBuilder: (BuildContext context,index){
 return Column(
   children: [
     Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 4),
       decoration: const BoxDecoration(
           shape:BoxShape.circle ,
           gradient: LinearGradient(colors: [
             Colors.yellow,
             Colors.red,
           ],
           begin: Alignment.bottomLeft,
           end: Alignment.topRight
           
           )
       ),
       child: Container(
         margin: EdgeInsets.all(2),
         decoration: BoxDecoration(
           color: Colors.black,
           shape:BoxShape.circle ,
         ),
         child: Container(
           padding: EdgeInsets.all(4),
           child: CircleAvatar(
             maxRadius: 33,
               backgroundImage: AssetImage(Provider.of<MyProvider>(context).Storylist[index]),
           ),
         ),
       ),
     ),
     SizedBox(height: 4,),
      Text(Provider.of<MyProvider>(context).names[index],style: TextStyle(color: Colors.white),)
   ],
 );
        }
        ),
    );
  }
}