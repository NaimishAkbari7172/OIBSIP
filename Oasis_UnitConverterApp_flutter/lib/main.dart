import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/settings.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => home(),
        '/settings': (context) => settings(),
      },
    ),
  );
}
