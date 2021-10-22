import 'package:flutter/material.dart';

Widget callToAction({text = 'Get Started', homeRoute, context}) {
  return Container(
    height: 50,
    width: double.infinity,
    margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
    ),
    child: GestureDetector(
      onTap: () {
        try {
          Navigator.pushNamed(context, homeRoute);
        } catch (e) {
          print(e);
          print(
              "Set homeRoute to the route where you want to land after on-boarding");
        }
      },
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xFF5B16D0),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
