import "package:beats/constants.dart";
import "package:beats/views/screens/signup_screen.dart";
import "package:beats/views/widgets/text_input.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                      height: 220,
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
                        onPressed: () => authController.loginUser(
                            _emailController.text, _passwordController.text),
                        child: const Text("Login"),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.offAll(() => SignUpScreen()),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          child: const Text("Forget Password"),
                          onTap: () {
                            print("object");
                          },
                        )),
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
