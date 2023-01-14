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
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
          ),
        ),
        prefixIcon: iconname,
        hintText: hintname,
        hintStyle: const TextStyle(
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
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
          ),
        ),
        suffixIcon: suffixicon,
        prefixIcon: iconname,
        hintText: hintname,
        hintStyle: const TextStyle(
          fontFamily: 'DMSans',
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ),
  );
}

payment_sucessfulContainerWidget({required image, required Text}) {
  return Column(
    children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: image,
          color: Colors.blue[50],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text
    ],
  );
}

order_review(context, image) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.14,
    width: MediaQuery.of(context).size.width * 0.2,
    decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(25),
        image: image),
  );
}
