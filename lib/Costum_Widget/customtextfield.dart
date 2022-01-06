import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.fullName,
      this.eMail,
      this.passWord,
      this.icons,
      this.hintText})
      : super(key: key);

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  var fullName, eMail, passWord;
  IconData? icons;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Padding
      padding: const EdgeInsets.all(20),
      //Text Field
      child: TextFormField(
        keyboardType: TextInputType.text,
        // Decoration
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icons),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.green, width: 1.5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1.5,
            ),
          ),
        ),

        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Enter Name';
          }
          return null;
        },
      ),
    );
  }
}
