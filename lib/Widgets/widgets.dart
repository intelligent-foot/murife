import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.white54,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white,
        width: 2),
        
      ),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,
          width: 2),
          ),
          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 2),
          ),
          );
}

TextStyle simpleTextFieldStyle() {
  return TextStyle(color: Colors.white,
  fontSize: 16);
}

TextStyle mediumTextStyle() {
  return TextStyle(color: Colors.white,
  fontSize: 17);
}

void showSnackbar(context,color,message){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message, style:const TextStyle(fontSize:14),),
    backgroundColor: color,
    duration: const Duration(seconds:2),
    action: SnackBarAction(
      label: "OK",
       onPressed:(){}, 
       textColor: Colors.white,
       )
    ));
}