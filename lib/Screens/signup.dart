import 'package:flutter/material.dart';
import 'package:new_test_form/Costum_Widget/custombutton.dart';
import 'package:new_test_form/Costum_Widget/customtextfield.dart';

// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  SignUp({Key? key, this.emailRex, this.passwordRex}) : super(key: key);

  TextEditingController fullNameRex = TextEditingController();

  TextEditingController? emailRex = TextEditingController();

  TextEditingController? passwordRex = TextEditingController();

  String sign = "SignUp";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController fullNameRex = TextEditingController();

  TextEditingController emailRex = TextEditingController();

  TextEditingController passwordRex = TextEditingController();

  String sign = "SignUp";

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
                  controller: fullNameRex,
                  fullName: fullNameRex,
                  icons: Icons.person,
                  hintText: "Enter Full Name",
                ),
                // Email
                CustomTextField(
                  controller: emailRex,
                  eMail: emailRex,
                  icons: Icons.email,
                  hintText: "Enter Email",
                ),
                // PassWord
                CustomTextField(
                  controller: passwordRex,
                  passWord: passwordRex,
                  hintText: "Enter password",
                ),
                CustomButton(
                  textPage: sign,
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
