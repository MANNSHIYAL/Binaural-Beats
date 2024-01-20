import 'package:beats/constants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Card(
            child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Text(
                    "Hi, ${authController.getUserData(firebaseAuth.currentUser!).displayName}",
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ))),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            child: Center(
              child: ElevatedButton(
                  onPressed: () => authController.logoutUser(),
                  child: const Text("Logout")),
            ),
          ),
        ]),
      ),
    );
  }
}
