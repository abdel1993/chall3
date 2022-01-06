import 'package:flutter/material.dart';
import 'package:new_test_form/Screens/homepage.dart';
import 'package:new_test_form/Screens/login.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.formKey, this.textPage, this.context})
      : super(key: key);

  var formKey, textPage, context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            if (textPage == "Login") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            } else if (textPage == "SignUp") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            }
          }
        },
        child: Text(textPage),
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