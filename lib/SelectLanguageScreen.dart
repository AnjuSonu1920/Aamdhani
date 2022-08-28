import 'package:aamdhane/RoleScreen.dart';
import 'package:aamdhane/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectLanguagePage extends StatefulWidget {
  const SelectLanguagePage({Key? key}) : super(key: key);

  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePage();
}

class _SelectLanguagePage extends State<SelectLanguagePage> {

  var isSelectEng = true;
  var isSelect2 = false;
  var isSelect3 = false;
  var isSelect4 = false;
  var isSelect5 = false;
  var isSelect6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: MediaQuery.of(context).size.width/12, height: 13,
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40)
                        ),
                      ),
                        child: Row(
                          children: [
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
                    ), width: MediaQuery.of(context).size.width/1.3, height: 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                        children: [
                          SizedBox(width: 30,),
                          ClipOval(
                              // borderRadius: BorderRadius.circular(60),
                                child: Container(
                                    color: Colors.white,
                                    // height: 20,
                                    child: Icon(Icons.radio_button_checked, color: Colors.grey, size: 13,))),
                          ],
                        ),
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
            SizedBox(height: 20,),
            Text('Choose Your preferred Language',style: GoogleFonts.roboto(fontSize: 14,)),
            SizedBox(height: 20,),
            Image(
              image: AssetImage('assets/lang.png',), fit: BoxFit.fill,
            ),
            SizedBox(height: 10,),
            Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 InkWell(
                   onTap: () {
                     setState(() {
                       isSelectEng = true;
                       isSelect2 = false;
                       isSelect3 = false;
                       isSelect4 = false;
                       isSelect5 = false;
                       isSelect6 = false;
                     });
                   },
                   child: Card(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                         ),
                     elevation: 8.0,
                     child:  ClipRRect(
                       borderRadius: BorderRadius.circular(8.0),
                       child: Container(
                         height: 130,
                         width: MediaQuery.of(context).size.width/4,
                         color: isSelectEng ? Color(0xFFF9D062) : Colors.white,
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children : [
                             Row(
                               children: [
                                 Text('English', style: GoogleFonts.roboto(fontSize: 14, color: isSelectEng ? Colors.white : Colors.grey.shade300),),
                               ],
                             ),
                               Text('Hello', style: GoogleFonts.roboto(fontSize: 18, color: isSelectEng ? Colors.white : Colors.grey.shade300, fontWeight: FontWeight.bold),)
                             ]
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     setState(() {
                       isSelect2 = true;
                       isSelectEng = false;
                       isSelect3 = false;
                       isSelect4 = false;
                       isSelect5 = false;
                       isSelect6 = false;
                     });

                   },
                   child: Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     ),
                     elevation: 8.0,
                     child:  ClipRRect(
                       borderRadius: BorderRadius.circular(8.0),
                       child: Container(
                         height: 130,
                         width: MediaQuery.of(context).size.width/4,
                         color: isSelect2 ?  Color(0xFFF9D062) : Colors.white  ,
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children : [
                                 Row(
                                   children: [
                                     Text('हिन्दी', style: GoogleFonts.roboto(fontSize: 14, color: isSelect2 ? Colors.white :Colors.grey.shade300),),
                                   ],
                                 ),
                                 Text('नमस्ते', style: GoogleFonts.roboto(fontSize: 18, color: isSelect2 ? Colors.white38 : Colors.grey.shade300, fontWeight: FontWeight.bold),)
                               ]
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     setState(() {
                       isSelect2 = false;
                       isSelectEng = false;
                       isSelect3 = true;
                       isSelect4 = false;
                       isSelect5 = false;
                       isSelect6 = false;
                     });

                   },
                   child: Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     ),
                     elevation: 8.0,
                     child:  ClipRRect(
                       borderRadius: BorderRadius.circular(8.0),
                       child: Container(
                         height: 130,
                         width: MediaQuery.of(context).size.width/4,
                         color: isSelect3 ?  Color(0xFFF9D062) : Colors.white  ,
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children : [
                                 Row(
                                   children: [
                                     Text('হ্যালো', style: GoogleFonts.roboto(fontSize: 14, color: isSelect3 ? Colors.white :Colors.grey.shade300),),
                                   ],
                                 ),
                                 Text('হ্যালো', style: GoogleFonts.roboto(fontSize: 18, color: isSelect3 ? Colors.white38 : Colors.grey.shade300, fontWeight: FontWeight.bold),)
                               ]
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelect2 = false;
                        isSelectEng = false;
                        isSelect3 = false;
                        isSelect4 = true;
                        isSelect5 = false;
                        isSelect6 = false;
                      });

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      elevation: 8.0,
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          height: 130,
                          width: MediaQuery.of(context).size.width/4,
                          color: isSelect4 ?  Color(0xFFF9D062) : Colors.white  ,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : [
                                  Row(
                                    children: [
                                      Text('ਸਤ', style: GoogleFonts.roboto(fontSize: 14, color: isSelect4 ? Colors.white :Colors.grey.shade300),),
                                    ],
                                  ),
                                  Text('ਸਤ ਸ੍ਰੀ', style: GoogleFonts.roboto(fontSize: 18, color: isSelect4 ? Colors.white38 : Colors.grey.shade300, fontWeight: FontWeight.bold),)
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
    setState(() {
      isSelect2 = false;
      isSelectEng = false;
      isSelect3 = false;
      isSelect4 = false;
      isSelect5 = true;
      isSelect6 = false;
    });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      elevation: 8.0,
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          height: 130,
                          width: MediaQuery.of(context).size.width/4,
                          color: isSelect5 ?  Color(0xFFF9D062) : Colors.white  ,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : [
                                  Row(
                                    children: [
                                      Text('ਅਕਾਲ', style: GoogleFonts.roboto(fontSize: 14, color: isSelect5 ? Colors.white :Colors.grey.shade300),),
                                    ],
                                  ),
                                  Text('ਅਕਾਲ', style: GoogleFonts.roboto(fontSize: 18, color: isSelect5 ? Colors.white38 : Colors.grey.shade300, fontWeight: FontWeight.bold),)
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
    setState(() {
      isSelect2 = false;
      isSelectEng = false;
      isSelect3 = false;
      isSelect4 = false;
      isSelect5 = false;
      isSelect6 = true;
    });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      elevation: 8.0,
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          height: 130,
                          width: MediaQuery.of(context).size.width/4,
                          color: isSelect6 ?  Color(0xFFF9D062) : Colors.white  ,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : [
                                  Row(
                                    children: [
                                      Text('ਅਕਾਲ', style: GoogleFonts.roboto(fontSize: 14, color: isSelect6 ? Colors.white :Colors.grey.shade300),),
                                    ],
                                  ),
                                  Text('ਅਕਾਲ', style: GoogleFonts.roboto(fontSize: 18, color: isSelect6 ? Colors.white38 : Colors.grey.shade300, fontWeight: FontWeight.bold),)
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: PrimaryColor),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RolePage()));
                    },
                    child: Text('Next',style: GoogleFonts.roboto(fontSize: 18,))),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
