import 'dart:core';

import 'package:beats/constants.dart';
import 'package:beats/views/screens/home_screen.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEMail extends StatefulWidget {
  const VerifyEMail({super.key});
  @override
  State<VerifyEMail> createState() => _VerifyEMailState();
}

class _VerifyEMailState extends State<VerifyEMail> {
  TextEditingController otp = TextEditingController();
  late String email;
  EmailOTP myAuth = EmailOTP();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    email = firebaseAuth.currentUser!.email.toString();
    myAuth.setSMTP(
        host: "smtp-relay.brevo.com",
        auth: true,
        username: "mannshiyal43024@gmail.com",
        password: "VRmt1B35cydZAvq0",
        secure: "TLS",
        port: 587);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        myAuth.setConfig(
                            appEmail: "noreply@binaural-beats.com",
                            appName: "Binaural Beats",
                            userEmail: email,
                            otpLength: 4,
                            otpType: OTPType.digitsOnly);
                        if (await myAuth.sendOTP() == true) {
                          Get.snackbar("Alert", "OTP has been sent.");
                        } else {
                          Get.snackbar("Alert", "Oops, failed to send OTP.");
                        }
                      },
                      child: const Text("Send OTP")),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        controller: otp,
                        decoration:
                            const InputDecoration(hintText: "Enter OTP")),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (await myAuth.verifyOTP(otp: otp.text) == true) {
                          Get.snackbar("Hurray", "OTP is verified");
                          Get.offAll(() => const HomeScreen());
                        } else {
                          Get.snackbar("Oops", "Invalid OTP");
                        }
                      },
                      child: const Text("Verify")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
