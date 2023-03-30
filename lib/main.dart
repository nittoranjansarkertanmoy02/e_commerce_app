import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/views/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Using Getx
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppy-Mart',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
        ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
