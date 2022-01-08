import 'package:flutter/material.dart';
import 'package:new_test_form/Costum_Widget/custombutton.dart';
import 'package:new_test_form/Costum_Widget/customtextfield.dart';

class Login extends StatefulWidget {
  Login({Key? key, this.emailConfirmed, this.passwordConfirmed})
      : super(key: key);
  String log = "Login";
  TextEditingController? emailConfirmed = TextEditingController();
  TextEditingController? passwordConfirmed = TextEditingController();

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String log = "Login";
  TextEditingController emailConfirmed = TextEditingController();
  TextEditingController passwordConfirmed = TextEditingController();

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
                // Email
                CustomTextField(
                  controller: emailConfirmed,
                  eMail: emailConfirmed,
                  icons: Icons.email,
                  hintText: "Enter Email",
                ),
                // PassWord
                CustomTextField(
                  controller: passwordConfirmed,
                  passWord: passwordConfirmed,
                  hintText: "Enter password",
                ),
                CustomButton(
                  textPage: widget.log,
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
