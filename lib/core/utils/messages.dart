
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showErrorMessage(String message){
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      gravity: ToastGravity.TOP,
      toastLength: Toast.LENGTH_LONG
  );

}

showSuccessMessage(String message){
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      gravity: ToastGravity.TOP,
      toastLength: Toast.LENGTH_LONG
  );

}
