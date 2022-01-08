// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:new_test_form/Costum_Widget/customtextfield.dart';
import 'package:new_test_form/Screens/homepage.dart';
import 'package:new_test_form/Screens/login.dart';
import 'package:new_test_form/Screens/signup.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  CustomButton({Key? key, this.formKey, this.textPage, this.context})
      : super(key: key);

  var formKey, textPage, context;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  final SignUp _signUp = SignUp();

  final Login _login = Login();
  final cText = CustomTextField();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          if (widget.formKey.currentState!.validate()) {
            if (widget.textPage == _login.log) {
              print(_signUp.sign);
              print(cText.passWord);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            } else if (widget.textPage == _signUp.sign) {
              print(_signUp.sign);
              print(cText.passWord);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            }
          }
        },
        child: Text(widget.textPage),
      ),
    );
  }
}

/*class BuildButton {
  BuildContext context;

  BuildButton({required this.context});

  ElevatedButton buildElevetedButton(
    formkey,
    textPage,
  ) {
    return ElevatedButton(
      onPressed: () {
        if (formkey.currentState!.validate()) {
          if (textPage == "Login") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Screen3()),
            );
          } else if (textPage == "Registre") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Screen2()),
            );
          }
        }
      },
      child: Text(textPage),
    );
  }
}
*/