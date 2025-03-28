// lib/presentation/widgets/scan_button.dart

import 'package:flutter/material.dart';

/// A reusable scan button with a professional UI.
class ScanButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ScanButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      child: const Text("Start Scanning"),
    );
  }
}
