// lib/presentation/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:barcode_reader_app/data/services/barcode_scanner_service.dart';
import 'package:barcode_reader_app/data/services/google_sheets_service.dart';

/// The main screen for scanning barcodes and sending data.
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String scannedBarcode = "No barcode scanned yet.";

  final barcodeScanner = BarcodeScannerService();
  final googleSheetsService = GoogleSheetsService();

  /// Handles barcode scanning and sending data to Google Sheets.
  Future<void> scanAndSendBarcode() async {
    final scannedData = await barcodeScanner.scanBarcode();

    if (scannedData.isNotEmpty) { // Fix unnecessary null comparison
      setState(() {
        scannedBarcode = scannedData; // Correctly assign scanned data
      });

      bool success = await GoogleSheetsService.sendBarcodeData(scannedData); // Access static method correctly
      if (success) {
        _showSnackbar("✅ Data sent successfully!");
      } else {
        _showSnackbar("❌ Failed to send data.");
      }
    } else {
      _showSnackbar("⚠️ Scan canceled or failed.");
    }
  }

  /// Shows a snackbar with a given message.
  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Barcode Scanner")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(scannedBarcode, style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: scanAndSendBarcode,
              child: const Text("Scan Barcode"),
            ),
          ],
        ),
      ),
    );
  }
}
