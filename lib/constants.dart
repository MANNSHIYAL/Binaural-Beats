import 'package:beats/controller/auth_controller.dart';
import 'package:beats/views/screens/library.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:beats/views/screens/profile_screen.dart';

//Firebase Contants Instances
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//Pages Instance
List<dynamic> pages = [const MusicLibrary(), ProfileScreen()];

//Auth Controller
var authController = AuthController.instance;
