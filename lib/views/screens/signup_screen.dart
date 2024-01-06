import 'package:beats/constants.dart';
import 'package:beats/views/screens/login_screen.dart';
import 'package:beats/views/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types';
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Stack(children: [
            SafeArea(
              child: Container(
                  decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/backgroundImage2.jpg"),
                  fit: BoxFit.cover,
                ),
              )),
            ),
            Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 305,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextInput(
                          controller: _userNameController,
                          inputText: "Username",
                          icons: Icons.person,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextInput(
                          controller: _emailController,
                          inputText: "Email",
                          icons: Icons.mail,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextInput(
                          controller: _passwordController,
                          inputText: "Password",
                          icons: Icons.lock,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: () => authController.registerUser(
                              _userNameController.text,
                              _emailController.text,
                              _passwordController.text),
                          child: const Text("SignUp"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () => Get.offAll(() => LoginScreen()),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
