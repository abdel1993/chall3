import 'package:flutter/material.dart';
import 'package:new_test_form/Costum_Widget/custombutton.dart';
import 'package:new_test_form/Costum_Widget/customtextfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<SignUp> {
  static GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                //Full Name
                CustomTextField(
                  fullName: "fullname",
                  icons: Icons.person,
                  hintText: "Enter Full Name",
                ),
                // Email
                CustomTextField(
                  eMail: "email",
                  icons: Icons.email,
                  hintText: "Enter Email",
                ),
                // PassWord
                CustomTextField(
                  passWord: "password",
                  hintText: "Enter password",
                ),
                CustomButton(
                  textPage: "SignUp",
                  formKey: formkey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
