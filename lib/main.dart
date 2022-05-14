import 'package:flutter/material.dart';

import 'myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            fixedSize: (const Size.fromWidth(130)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            primary: Colors.white,
            onPrimary: Colors.black,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
