import 'package:flutter/material.dart';
import 'package:foodie/OtpScreen.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                height: h * .9,
                color: Colors.red,
                child: Image.asset(
                  "assets/images/Hey_foodie.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  "Order Delicious Foods \n    To Your Doorstep",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      color: Colors.blueGrey,
                    ),
                  ),
                  Positioned(
                      bottom: .01,
                      left: 125,
                      child: Container(
                          color: Colors.white,
                          child: Text(
                            " Log in or sign up ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.blueGrey.shade900,
                                fontFamily: 'Inder'),
                          )))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: Form(
                      child: IntlPhoneField(
                    initialCountryCode: 'IN',
                    decoration: InputDecoration(
                        // focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Enter Phone Number",
                        hintStyle: TextStyle(fontFamily: 'Inter'),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ))),
              SizedBox(
                width: w * .87,
                height: h * .11,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color(0xfff43127),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const otpScreen()));
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter'),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Divider(
                      color: Colors.blueGrey,
                    ),
                  ),
                  Positioned(
                      left: 181,
                      bottom: 8,
                      child: Container(
                          color: Colors.white,
                          child: Text(
                            " Or ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.blueGrey.shade800,
                                fontFamily: 'Inder'),
                          ))),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 110,
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: .5), shape: BoxShape.circle),
                    padding: const EdgeInsets.all(6.0),
                    child: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: .5), shape: BoxShape.circle),
                    padding: const EdgeInsets.all(6.0),
                    child: const Icon(
                      Icons.mail_rounded,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: .5), shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/google.png",
                      height: 25,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: const TextSpan(
                  text: "            By continuing, you agree to our\n",
                  style: TextStyle(
                      fontFamily: 'Inder',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Terms os Service ',
                        style: TextStyle(
                            fontFamily: 'Inder',
                            fontWeight: FontWeight.w400,
                            color: Color(0xfff43127))),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            fontFamily: 'Inder',
                            fontWeight: FontWeight.w400,
                            color: Color(0xfff43127))),
                    TextSpan(
                        text: ' & ',
                        style: TextStyle(
                          fontFamily: 'Inder',
                          fontWeight: FontWeight.w400,
                        )),
                    TextSpan(
                        text: 'Content Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inder',
                            color: Color(0xfff43127))),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
