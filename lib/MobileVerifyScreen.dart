import 'package:aamdhane/detailScreen.dart';
import 'package:aamdhane/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class MobileVerifyPage extends StatefulWidget {
  const MobileVerifyPage({Key? key}) : super(key: key);

  @override
  State<MobileVerifyPage> createState() => _MobileVerifyPage();
}
var phone = TextEditingController();

class _MobileVerifyPage extends State<MobileVerifyPage> {

  var SmsCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: MediaQuery.of(context).size.width/2.5, height: 13,
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
                      ), width: MediaQuery.of(context).size.width/2, height: 13,
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
              SizedBox(height: 100,),
              Image(image: AssetImage('assets/logo.png'), width: MediaQuery.of(context).size.width/1.2,),
              SizedBox(height: 10,),
              Text('Sign Up', style: GoogleFonts.roboto(fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontSize: 22),),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Theme(
                    data: new ThemeData(
                        primaryColor: LightPrimaryColor
                    ),
                  child: TextField (
                    controller: phone,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintStyle: GoogleFonts.roboto(color: Colors.grey.shade300),
                        prefixIcon: Icon(Icons.phone_android, color: Colors.grey.shade300,),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: LightPrimaryColor),
                        ),
                        // labelText: 'Enter Name',
                        hintText: 'Phone Number'
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: PrimaryColor),
                      onPressed: () async {
                        FirebaseAuth auth = FirebaseAuth.instance;
                        await auth.verifyPhoneNumber(
                          phoneNumber: '+91 ${phone.text.trim()}',
                          verificationCompleted: (PhoneAuthCredential credential) async {
                            // ANDROID ONLY!
                            // Sign the user in (or link) with the auto-generated credential
                            await auth.signInWithCredential(credential);
                            Fluttertoast.showToast(msg: 'OTP Sent');
                          },
                           verificationFailed: (FirebaseAuthException e) {
                              if (e.code == 'invalid-phone-number') {
                               print('The provided phone number is not valid.');
                               Fluttertoast.showToast(msg: '${e.code}');
                              }
                          },
                          codeSent: (String verificationId, int? resendToken) async {
                            // Update the UI - wait for the user to enter the SMS code
                            String smsCode = SmsCode;

                            // Create a PhoneAuthCredential with the code
                            PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);

                            // Sign the user in (or link) with the credential
                            await auth.signInWithCredential(credential);
                            Fluttertoast.showToast(msg: 'Congratulation');

                          },
                          timeout: const Duration(seconds: 60),
                          codeAutoRetrievalTimeout: (String verificationId) {
                            // Auto-resolution timed out...
                          },
    );
                      },
                      child: Text('Get OTP',style: GoogleFonts.roboto(fontSize: 18,))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('You will receive 4 digit code on your phone. Please verify your phone by putting the code here.', style: GoogleFonts.roboto(fontSize: 14),),
              ),
              // SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth:  MediaQuery.of(context).size.width/7.5,
                  style: TextStyle(
                      fontSize: 17
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    setState((){
                    print("Completed: " + pin);
                    SmsCode = pin;
                    });
                  },
                ),
              ),
              SizedBox(height: 30,),
              TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: Text('Next',style: GoogleFonts.roboto(fontSize: 18,color: Colors.black))),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
