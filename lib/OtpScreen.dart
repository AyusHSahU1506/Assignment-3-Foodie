import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/ShopPage.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _OTPPageState();
}

class _OTPPageState extends State<otpScreen> {
  FocusNode firstDigitFocusNode = FocusNode();
  FocusNode secondDigitFocusNode = FocusNode();
  FocusNode thirdDigitFocusNode = FocusNode();
  FocusNode fourthDigitFocusNode = FocusNode();
  FocusNode fifthDigitFocusNode = FocusNode();
  FocusNode sixthDigitFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          title: const Text(
            'OTP Verification',
            style: TextStyle(color: Colors.black, fontFamily: 'Inter'),
          ),
          backgroundColor: Colors.white),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double w = constraints.maxWidth;
          double h = constraints.maxHeight;
          return Column(
            children: [
              SizedBox(
                height: h * .05,
              ),
              const Text(
                "We have sent a verification code to",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "+91-XXXXXX5432",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: OTPTextField(
                  fieldStyle: FieldStyle.box,
                  otpFieldStyle: OtpFieldStyle(
                    focusBorderColor: Colors.black,
                    enabledBorderColor: Colors.black,
                  ),
                  inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                  length: 6,
                  width: w,
                  fieldWidth: 50,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  onChanged: (value) {
                    if (value.isEmpty) {
                      FocusScope.of(context).requestFocus(firstDigitFocusNode);
                    } else if (value.isEmpty) {
                      FocusScope.of(context).requestFocus(thirdDigitFocusNode);
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: "Didn't get the OTP? ",
                  style: const TextStyle(
                      fontFamily: 'Inder',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Resend SMS',
                        style: TextStyle(
                            fontFamily: 'Inder',
                            fontWeight: FontWeight.w600,
                            color: Colors.blueGrey.shade400)),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const shopPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff43127),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "VERIFY & ENTER",
                  style: TextStyle(fontFamily: 'Inter'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
