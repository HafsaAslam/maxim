import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/screens/product.dart';

import '../auth/firebase_auth.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LogIN Page"),
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
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              validator: (String? input) {
                if (input == null || input.isEmpty) {
                  return "Please type your email.";
                }
                return null;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: passwordcontroller,
              validator: (String? input) {
                if (input == null || input.isEmpty) {
                  return "Please type your password.";
                }
                return null;
              },
              obscureText: isHidden,
            ),
            TextButton(
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    bool loggedIn = await Auth.loginUser(
                        email: emailcontroller.text,
                        password: passwordcontroller.text);
                    if (loggedIn) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProductClass()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Login Failed')));
                    }
                  }
                },
                child: Text('LogIN'))
          ],
        ),
      ),
    );
  }
}
