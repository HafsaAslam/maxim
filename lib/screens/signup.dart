import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/screens/Login.dart';

import '../auth/firebase_auth.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Page"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                validator: (value) {
                  Pattern pattern =
                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                      r"{0,253}[a-zA-Z0-9])?)*$";
                  RegExp regex = RegExp(pattern.toString());
                  if (value == null) {
                    return 'Enter an Email Address!';
                  } else if (!regex.hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null;
                }),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                hintText: "Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              validator: (String? input) {
                if (input == null || input.isEmpty) {
                  return "Please name.";
                  // } else if (input.length < 6) {
                  //   return "Please enter 6 digits.";
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                hintText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              validator: (String? input) {
                if (input == null || input.isEmpty) {
                  return "Please password.";
                } else if (input.length < 6) {
                  return "Please enter 8 digits.";
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
                color: Colors.cyanAccent,
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    await Auth.signupUser(
                      email: emailcontroller.text,
                      name: namecontroller.text,
                      password: passwordcontroller.text,
                    );

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const LogIn()));
                  }
                },
                child: Text("Sign Up")),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogIn()));
                },
                child: Text('LogIN'))
          ],
        ),
      ),
    );
  }
}
