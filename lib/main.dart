import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_joke_app/components/routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    getPages:allPages,
  ));
}

