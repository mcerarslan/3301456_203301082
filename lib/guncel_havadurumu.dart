import 'package:flutter/material.dart';

Widget guncelHavaDurumu (IconData icon,String temp,String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Icon(
          icon,
          color: Colors.orange,
          size: 80.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text("$temp",
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("$location",
          style: TextStyle(
            fontSize: 18,color: Color(0xffffffff),
          ),
        ),
      ],
    ),
  );
}