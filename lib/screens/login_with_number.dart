import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/screens/verify_phone_code.dart';

class LoginWithNumber extends StatefulWidget {
  const LoginWithNumber({super.key});

  @override
  State<LoginWithNumber> createState() => _LoginWithNumberState();
}

class _LoginWithNumberState extends State<LoginWithNumber> {
  bool loading = false;
  final auth = FirebaseAuth.instance;
  final TextEditingController phoneController = TextEditingController();
  Country selectedCountry = Country(
      phoneCode: "92",
      countryCode: "Pak",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "Pakistan",
      example: "Pakistan",
      displayName: "Pakistan",
      displayNameNoCountryCode: "Pak",
      e164Key: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login With Phone"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Add your phone number. We'll send you a verification code",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextFormField(
                style: const TextStyle(
                  fontSize: 18,
                ),
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Enter Your Phoneno",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " + ${selectedCountry.phoneCode}",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                setstate() {
                  loading = true;
                }

                ;
                auth.verifyPhoneNumber(
                    phoneNumber: phoneController.text,
                    timeout: Duration(seconds: 60),
                    verificationCompleted: (_) {
                      setstate() {
                        loading = false;
                      }

                      ;
                    },
                    verificationFailed: (e) {
                      print(e.message);
                    },
                    codeSent: (String verificationId, int? Token) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => VerifyPhoneCode(
                                verificationId: verificationId,
                              )));
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {
                      verificationId = verificationId;
                      print(verificationId);
                      print("Timout");
                    });
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.green),
                child: Center(
                    child: Text(
                  "Login With Phone",
                  style: TextStyle(color: Colors.black),
                )),
              ),
            )
          ]),
        ));
  }
}
