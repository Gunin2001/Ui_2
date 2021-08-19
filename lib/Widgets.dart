import 'package:flutter/material.dart';
Widget inCard(String s)
{
  return Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0,top: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.amber),
          borderRadius: BorderRadius.all(Radius.circular(10.0))

      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
           decoration: InputDecoration(
             hintText: s,
            hintStyle: TextStyle(color: Colors.amber),

            ),
        ),
      );
}
