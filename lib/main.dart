import 'package:beats/controller/auth_controller.dart';
import 'package:beats/firebase_options.dart';
import 'package:beats/views/screens/login_screen.dart';
import 'package:flutter/material.dart';
import "package:firebase_core/firebase_core.dart";
import "package:get/get.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Binaural Beats",
      home: LoginScreen(),
    );
  }
}
