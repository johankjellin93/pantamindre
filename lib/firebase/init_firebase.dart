import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

/// Initialize Firebase services
Future<void> initializeFirebase() async {
  await Firebase.initializeApp();
  
  // Initialize all Firebase services
  FirebaseAuth.instance;
  FirebaseFirestore.instance;
  FirebaseStorage.instance;
  
  // Enable persistence for offline support
  await FirebaseFirestore.instance.enablePersistence();
  
  // Set up authentication state persistence
  await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
}
