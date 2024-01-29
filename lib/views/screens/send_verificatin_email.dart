import 'dart:async';

import 'package:beats/constants.dart';
import 'package:beats/views/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendVerificationEmail extends StatefulWidget {
  const SendVerificationEmail({super.key});

  @override
  State<SendVerificationEmail> createState() => _SendVerificationEmailState();
}

class _SendVerificationEmailState extends State<SendVerificationEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            bool isVerified = firebaseAuth.currentUser!.emailVerified;
            if (isVerified) {
              Get.offAll(() => const HomeScreen());
            } else {
              Get.snackbar("Alert",
                  "Please verify you email address and press SignUp/Login button again");
              User? user = firebaseAuth.currentUser;
              user!.sendEmailVerification();
              Timer.periodic(
                  const Duration(seconds: 1),
                  (timer) => {
                        firebaseAuth.currentUser!.reload(),
                        if (firebaseAuth.currentUser!.emailVerified)
                          {
                            print(firebaseAuth.currentUser!.emailVerified),
                            timer.cancel(),
                            Get.offAll(() => const HomeScreen()),
                          }
                      });
            }
          },
          child: const Text("Send Verification Email"),
        ),
      ),
    );
  }
}
