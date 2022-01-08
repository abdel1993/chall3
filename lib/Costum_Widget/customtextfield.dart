import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      this.fullName,
      this.eMail,
      this.passWord,
      this.icons,
      this.hintText,
      this.controller})
      : super(key: key);

  var fullName, eMail, passWord;
  TextEditingController? controller;
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
        controller: widget.controller,
        obscureText: widget.passWord == widget.controller ? isVisible : false,
        // Decoration
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: widget.passWord == widget.controller
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
            if (widget.fullName == widget.controller) {
              return 'please enter Full Name';
            } else if (widget.eMail == widget.controller) {
              return 'Please Enter Email';
            } else if (widget.passWord == widget.controller) {
              return 'please enter PassWord';
            }
          }
          if (widget.fullName == widget.controller &&
              widget.controller!.text.length < 4) {
            return 'Please Enter A Valid Name at Least 4 Letters ';
          }
          if (widget.passWord == widget.controller &&
              widget.controller!.text.length < 6) {
            return 'Your Pass Word must have at least 6 carecters';
          }
          if (widget.eMail == widget.controller &&
              !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                  .hasMatch(value)) {
            return 'Please Enter A Valid Email exp xx@gmail.com';
          }
        },
        onSaved: (newValue) {
          widget.controller!.text = newValue!;
        },
      ),
    );
  }
}
