import 'package:aamdhane/MobileVerifyScreen.dart';
import 'package:aamdhane/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RolePage extends StatefulWidget {
  const RolePage({Key? key}) : super(key: key);

  @override
  State<RolePage> createState() => _RolePage();
}
var isLab = false;
var isMid = false;
var isFac = false;

class _RolePage extends State<RolePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: MediaQuery.of(context).size.width/5, height: 13,
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40)
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipOval(
                            // borderRadius: BorderRadius.circular(60),
                              child: Container(
                                  color: Colors.white,
                                  // height: 20,
                                  child: Icon(Icons.radio_button_checked, color: Color(0xFF018B63), size: 13,))),
                          ClipOval(
                            // borderRadius: BorderRadius.circular(60),
                              child: Container(
                                  color: Colors.white,
                                  // height: 20,
                                  child: Icon(Icons.radio_button_checked, color: Color(0xFF018B63), size: 13,))),
                        ],
                      ),),
                    Container( decoration: BoxDecoration(
                      color: LightPrimaryColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40)
                      ),
                    ), width: MediaQuery.of(context).size.width/1.5, height: 13,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              ClipOval(
                                // borderRadius: BorderRadius.circular(60),
                                  child: Container(
                                      color: Colors.white,
                                      // height: 20,
                                      child: Icon(Icons.radio_button_checked, color: Colors.grey, size: 13,))),
                            ],
                          ),
                          // ClipOval(
                          //   // borderRadius: BorderRadius.circular(60),
                          //     child: Container(
                          //         color: Colors.white,
                          //         // height: 20,
                          //         child: Icon(Icons.radio_button_checked, color: Colors.grey, size: 13,))),
                          ClipOval(
                            // borderRadius: BorderRadius.circular(60),
                              child: Container(
                                  color: Colors.white,
                                  // height: 20,
                                  child: Icon(Icons.radio_button_checked, color: Colors.grey, size: 13,))),
                          ClipOval(
                            // borderRadius: BorderRadius.circular(60),
                              child: Container(
                                  color: Colors.white,
                                  // height: 20,
                                  child: Icon(Icons.radio_button_checked, color: Colors.grey, size: 13,))),
                          ClipOval(
                            // borderRadius: BorderRadius.circular(60),
                              child: Container(
                                  color: Colors.white,
                                  // height: 20,
                                  child: Icon(Icons.radio_button_checked, color: Colors.grey, size: 13,))),

                        ],
                      ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container( width: MediaQuery.of(context).size.width / 7 ,child: Text('Language',style: GoogleFonts.roboto(fontSize: 10, color: PrimaryColor))),
                      Container( width: MediaQuery.of(context).size.width / 7, child: Text('Role',style: GoogleFonts.roboto(fontSize: 10,))),
                      Container(
                          width: MediaQuery.of(context).size.width / 7,
                          child: Text('Mobile',style: GoogleFonts.roboto(fontSize: 10,))),
                      Container(
                          width: MediaQuery.of(context).size.width / 7, child: Text('Personal Details', maxLines: 2 , style: GoogleFonts.roboto(fontSize: 10,))),
                      Container(
                          width: MediaQuery.of(context).size.width / 7
                          ,child: Text('Skills',style: GoogleFonts.roboto(fontSize: 10,))),
                      Container(
                          width: MediaQuery.of(context).size.width / 7,
                          child: Text('Refer',style: GoogleFonts.roboto(fontSize: 10,))),
                    ],
                  ),
                )
              ],
            ),
            // SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 32,),
                Text('Who are you?',style: GoogleFonts.roboto(fontSize: 18, )),
              ],
            ),
            // SizedBox(height: 20,),
            InkWell(
              onTap: () {
                setState(() {
                  isFac = false;
                  isLab = true;
                  isMid = false;
                });
              },
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: isLab ? PrimaryColor : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8),
                  ),
                  border: Border.all(
                    width: 2,
                    color: LightPrimaryColor,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                            color: LightPrimaryColor,
                            padding: EdgeInsets.all(15.0),
                            child: Image.asset('assets/L.png')),
                      ),
                      SizedBox(width: 20,),
                      Text(
                      "Labourer",
                        style: GoogleFonts.roboto(color: isLab ? Colors.white : Colors.grey.shade400),
                    ),
                  ],
                  ),
                ),
              ),
            ),
            // SizedBox(height: 10,),
            InkWell(
              onTap: () {
                setState(() {
                  isFac = false;
                  isLab = false;
                  isMid = true;
                });
              },
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: isMid ? PrimaryColor : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8),
                  ),
                  border: Border.all(
                    width: 2,
                    color: LightPrimaryColor,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                            color: LightPrimaryColor,
                            padding: EdgeInsets.all(15.0),
                            child: Image.asset('assets/L.png')),
                      ),
                      SizedBox(width: 20,),
                      Text(
                        "Middle Man",
                        style: GoogleFonts.roboto(color: isMid ? Colors.white : Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(height: 10,),
            InkWell(
              onTap: () {
                setState(() {
                  isFac = true;
                  isLab = false;
                  isMid = false;
                });
              },
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: isFac ? PrimaryColor : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8),
                  ),
                  border: Border.all(
                    width: 2,
                    color: LightPrimaryColor,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                            color: LightPrimaryColor,
                            padding: EdgeInsets.all(15.0),
                            child: Image.asset('assets/B.png')),
                      ),
                      SizedBox(width: 20,),
                      Text(
                        "Factory Owner",
                        style: GoogleFonts.roboto(color: isFac ? Colors.white :Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: PrimaryColor),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MobileVerifyPage()));
                    },
                    child: Text('Next',style: GoogleFonts.roboto(fontSize: 18,))),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
