import 'package:flutter/material.dart';

import './pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS TPM IF-C',
      home: LoginPage(
        username: '',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
