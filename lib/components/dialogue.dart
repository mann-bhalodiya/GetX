import 'package:flutter/material.dart';
import 'package:get/get.dart';

void dialogueBoxHelper() {
  Get.defaultDialog(
    backgroundColor: Colors.white,
    title: "Send a message",

    middleText: "Sending a msg to Flutter team",
    actions: [],
  );
}
