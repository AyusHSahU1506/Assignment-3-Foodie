import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          title: const Text(
            'OTP Verification',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "We have sent a verification code to",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: OTPTextField(
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                focusBorderColor: Colors.black,
                enabledBorderColor: Colors.black,
              ),
              // isDense: true,
              inputFormatter: [FilteringTextInputFormatter.digitsOnly],
              length: 6,
              width: MediaQuery.of(context).size.width,
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
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xfff43127),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "VERIFY & ENTER",
            ),
          ),
        ],
      ),
    );
  }
}
