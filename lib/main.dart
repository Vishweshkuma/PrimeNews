import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getstorageandemailvalidation/Controler/Bottom_controler.dart';
import 'package:getstorageandemailvalidation/Page/HomePage.dart';

import 'Page/HomePageControler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'News app',
    home: Homepagecontroler(),
    );
  }
}
