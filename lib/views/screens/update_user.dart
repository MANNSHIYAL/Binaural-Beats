import 'package:flutter/material.dart';

class UpdateUserData extends StatefulWidget {
  const UpdateUserData({super.key});

  @override
  State<UpdateUserData> createState() => _UpdateUserDataState();
}

class _UpdateUserDataState extends State<UpdateUserData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('data'),
      ),
    );
  }
}
