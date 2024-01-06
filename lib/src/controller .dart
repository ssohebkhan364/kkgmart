
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;

  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar("title", "less than 0 are not decrease value",
          icon: const Icon(Icons.alarm),
          isDismissible: true,
          duration: const Duration(seconds: 3));
    } else {
      books.value--;
    }
  }
}
