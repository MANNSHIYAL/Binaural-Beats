import 'package:beats/constants.dart';
import 'package:beats/views/screens/update_user.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
showOptionsDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => SimpleDialog(children: [
            SimpleDialogOption(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UpdateUserData())),
              child: const Text("Update profile data"),
            ),
            SimpleDialogOption(
                onPressed: () => authController.logoutUser(),
                child: const Text(
                  "Logout",
                ))
          ])
      );
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
        title: const Text("My Profile"),
      ),
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Card(
            child: Container(
                height: 70,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Hi, ${authController.getUserData(firebaseAuth.currentUser!).displayName}",
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          )),
                      IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            showOptionsDialog(context);
                          }),
                    ])),
          ),
        ]),
      ),
    );
  }
}
