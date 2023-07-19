import 'package:flutter/material.dart';

class VerifyPhoneCode extends StatefulWidget {
  final String verificationId;
  const VerifyPhoneCode({required this.verificationId, super.key});

  @override
  State<VerifyPhoneCode> createState() => _VerifyPhoneCodeState();
}

class _VerifyPhoneCodeState extends State<VerifyPhoneCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Code Verification"),
          backgroundColor: Colors.green,
        ),
        body: Column(children: []));
  }
}
