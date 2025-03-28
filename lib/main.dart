import 'package:flutter/material.dart';
import 'package:barcode_reader_app/app.dart'; // Corrected the import path

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode Reader App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(), // Extracted Scaffold into a separate widget
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Barcode Reader')),
      body: const Center(child: Text('Hello, Flutter!')),
    );
  }
}
