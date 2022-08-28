import 'dart:async';

import 'package:aamdhane/SelectLanguageScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SelectLanguagePage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              color: Colors.white,
              child: Image.asset('assets/logo.png')
          ),
          Text('Jobs in', style: GoogleFonts.roboto(color: PrimaryColor, fontSize: 20),)
        ],
      ),
    );
  }
}
