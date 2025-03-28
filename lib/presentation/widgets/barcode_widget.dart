// lib/presentation/widgets/barcode_display.dart

import 'package:flutter/material.dart';

/// A reusable widget to display barcode information.
class BarcodeDisplay extends StatelessWidget {
  final String? barcodeValue;

  const BarcodeDisplay({Key? key, required this.barcodeValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: Text(
          barcodeValue ?? "No barcode scanned",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
