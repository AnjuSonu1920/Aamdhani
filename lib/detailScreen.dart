import 'package:aamdhane/MobileVerifyScreen.dart';
import 'package:aamdhane/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'RoleScreen.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Details'),
              Text("Mobile Number = ${phone.text == '' ? 'Please go back and verify your number' : phone.text.trim()}\nRole = ${isLab ? 'Labourer' : isMid ? 'Middle Man' : isFac ? 'Factroy Owner' : 'You Dont Choose any Role'}")
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
