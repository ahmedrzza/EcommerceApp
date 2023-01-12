import 'package:flutter/material.dart';

textFieldUsedWidget({
  required hintname,
  required iconname,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
    child: TextField(
      obscureText: false,
      decoration: InputDecoration(
        focusedBorder:const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
          ),
        ),
        prefixIcon: iconname,
        hintText: hintname,
        hintStyle:const TextStyle(
          fontFamily: 'DMSans',
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ),
  );
}

textFieldUsedWidgetwithSuffixicon(
    {required hintname, required iconname, required suffixicon}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder:const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
          ),
        ),
        suffixIcon: suffixicon,
        prefixIcon: iconname,
        hintText: hintname,
        hintStyle:const TextStyle(
          fontFamily: 'DMSans',
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ),
  );
}
