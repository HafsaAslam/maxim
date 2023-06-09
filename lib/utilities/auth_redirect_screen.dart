import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'package:maxim_ordering_app/screens/profile.dart';
import 'package:maxim_ordering_app/screens/signup.dart';

class AuthRedirectScreen extends StatefulWidget {
  const AuthRedirectScreen({super.key});

  @override
  State<AuthRedirectScreen> createState() => _AuthRedirectScreenState();
}

class _AuthRedirectScreenState extends State<AuthRedirectScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.active) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return ProfileSreen();
          } else {
            return SignUP();
          }
        });
  }
}
