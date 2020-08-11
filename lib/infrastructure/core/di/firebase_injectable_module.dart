import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  GoogleSignIn get googleSignIn => GoogleSignIn();
  Firestore get firestore => Firestore.instance;
}
