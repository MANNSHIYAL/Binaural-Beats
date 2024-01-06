import 'package:flutter/material.dart';

class MusicLibrary extends StatefulWidget {
  const MusicLibrary({super.key});

  @override
  State<MusicLibrary> createState() => _MusicLibraryState();
}

class _MusicLibraryState extends State<MusicLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Music Library'),
      ),
    );
  }
}
