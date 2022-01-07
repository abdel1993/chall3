import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      this.fullName,
      this.eMail,
      this.passWord,
      this.icons,
      this.hintText})
      : super(key: key);

  var fullName, eMail, passWord;
  IconData? icons;
  String? hintText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Padding
      padding: const EdgeInsets.all(20),
      //Text Field
      child: TextFormField(
        obscureText: widget.passWord == "password" ? isVisible : false,
        // Decoration
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: widget.passWord == "password"
              ? IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                )
              : Icon(widget.icons),
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
            if (widget.fullName == "fullname") {
              return 'please enter Full Name';
            } else if (widget.eMail == "email") {
              return 'Please a valid Email';
            } else if (widget.passWord == "password") {
              return 'please enter PassWord';
            }
          }

          return null;
        },
      ),
    );
  }
}
