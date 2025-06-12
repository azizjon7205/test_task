import 'package:flutter/material.dart';

import 'app.dart';
import 'core/utils/injections.dart';

void main() {

  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upload File',
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF5570F1)),
      ),
      home: const FileUploadPage(),
    );
  }
}

