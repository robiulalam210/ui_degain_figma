
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {


   CustomTextField({
    Key? key,this.hitText,this.prefixIcon,this.suffixIcon
  }) : super(key: key);

   String? hitText;
   Widget? prefixIcon,suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(

      style: TextStyle(color: Colors.black),
      cursorRadius: Radius.circular(12),
      cursorColor: Color(0xff8A8A8E),
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xff8A8A8E))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: hitText,
          hintStyle: TextStyle(color: Color(0xff8A8A8E))),
    );
  }
}
class CustomPasswordField extends StatelessWidget {


  CustomPasswordField({
    Key? key,this.hitText,this.prefixIcon,this.suffixIcon,
  }) : super(key: key);

   String? hitText;
   Widget? prefixIcon,suffixIcon;
   bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return TextField(

      obscureText: _obscureText,
      style: TextStyle(color: Colors.black),
      cursorRadius: Radius.circular(12),
      cursorColor: Color(0xff8A8A8E),
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Color(0xff8A8A8E))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          hintText: hitText,
          hintStyle: TextStyle(color: Color(0xff8A8A8E))),
    );
  }
}
