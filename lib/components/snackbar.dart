import 'package:flutter/material.dart';
import 'package:get/get.dart';

void snackBarHelper() {
  Get.snackbar(
    "Message from Flutter",
    "Good morning! Have a great Day",
    animationDuration: Duration(seconds: 1),
    duration: Duration(seconds: 5),
    isDismissible: true,
    dismissDirection: DismissDirection.startToEnd,
    backgroundColor: Colors.blue.shade500.withOpacity(0.5),
    barBlur: 10.0,
    colorText: Colors.black,
    snackPosition: SnackPosition.TOP,
    boxShadows: [
      BoxShadow(
        color: Colors.black.withOpacity(0.4),
        blurRadius: 20,
        spreadRadius: 2,
        offset: Offset(4, 4),
      ),
    ],
    icon: Icon(Icons.notifications_on),
    mainButton: TextButton(
      onPressed: () {
        print("Marked as Read");
      },
      child: Text("Mark as Read", style: TextStyle(color: Colors.black)),
    ),
    margin: EdgeInsets.all(12),
    overlayBlur: 1,
    overlayColor: Colors.blue.withOpacity(0.3),
    instantInit: true,
    ////showProgressIndicator: true,
    //// progressIndicatorBackgroundColor: Colors.blue.shade500,
    //// progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(
    ////   Colors.blue,
    //// ),
  );
}
