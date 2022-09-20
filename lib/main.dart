import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_notes_medstud/app_route.dart';
import 'package:mini_notes_medstud/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: appRoute,
      initialRoute: SplashView.route,
    );
  }
}
