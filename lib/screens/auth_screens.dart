import 'package:ezbuy/constraints/global_variable.dart';
import 'package:ezbuy/widgets/custom_buttom.dart';
import 'package:ezbuy/widgets/custom_textfield.dart';
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

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              tileColor: _auth == Auth.signup ? GlobalVariables.backgroundColor:GlobalVariables.greyBackgroundCOlor,
              title: Text(
                "Created Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.signup)
              Container(
                padding: EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextfield(
                        controller: _nameController,
                        hintText: "Name",
                      ),
                      SizedBox(height: 10,),
                      CustomTextfield(
                        controller: _emailController,
                        hintText: "Email",
                      ),
                      SizedBox(height: 10,),
                      CustomTextfield(
                        controller: _passwordController,
                        hintText: "Password",
                      ),
                      SizedBox(height: 10,),
                      CustomButtom(
                        text: 'Sign Up',
                       onTap: (){

                       })
                    ],
                  ),
                ),
              ),
            ListTile(
              tileColor: _auth==Auth.signin ? GlobalVariables.backgroundColor:GlobalVariables.greyBackgroundCOlor,
              title: Text(
                "Sign-In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),if (_auth == Auth.signin)
              Container(
                padding: EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      CustomTextfield(
                        controller: _emailController,
                        hintText: "Email",
                      ),
                      SizedBox(height: 10,),
                      CustomTextfield(
                        controller: _passwordController,
                        hintText: "Password",
                      ),
                      SizedBox(height: 10,),
                      CustomButtom(
                        text: 'Sign In',
                       onTap: (){

                       })
                    ],
                  ),
                ),
              ),
          ],
        ),
      )),
    );
  }
}
