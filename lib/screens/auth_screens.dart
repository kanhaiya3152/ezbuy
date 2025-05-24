import 'package:ezbuy/constraints/global_variable.dart';
import 'package:flutter/material.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreens extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreens({super.key});

  @override
  State<AuthScreens> createState() => _AuthScreensState();
}

class _AuthScreensState extends State<AuthScreens> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              title: Text(
                "Created Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if(_auth == Auth.signup)
              Form(
                key: _signUpFormKey,
                child: Column(),
              ),
            
            ListTile(
              title: Text(
                "Sign-In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
