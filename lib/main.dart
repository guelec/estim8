import 'package:estim8/ui/calculate.dart';
import 'package:estim8/ui/get_started.dart';
import 'package:estim8/ui/help.dart';
import 'package:estim8/ui/home_screen.dart';
import 'package:estim8/ui/optimization.dart';
import 'package:estim8/ui/splash_screen_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: SplashScreenWidget(),
      title: "ESTIM8",
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_screen': (context) => HomeScreen(),
        '/get_started': (context) => GetStarted(),
        '/calculate': (context) => Calculate(),
        '/help': (context) => Help(),
        '/optimization': (context) => Optimization()
      },
      theme: ThemeData()));
}
