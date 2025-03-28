// lib/presentation/screens/scan_screen.dart

import 'package:flutter/material.dart';
import 'package:barcode_reader_app/data/services/barcode_scanner_service.dart';
import 'package:barcode_reader_app/data/services/google_sheets_service.dart';

/// Screen for scanning barcodes and sending data to Google Sheets.
class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String? scannedBarcode;
  bool isLoading = false;

  final barcodeScanner = BarcodeScannerService();
  final googleSheetsService = GoogleSheetsService();

  /// Handles barcode scanning and sending data to Google Sheets.
  Future<void> scanBarcode() async {
    setState(() => isLoading = true);

    final scannedData = await barcodeScanner.scanBarcode();

    if (scannedData.isNotEmpty) { // Fix unnecessary null comparison
      setState(() => scannedBarcode = scannedData);

      bool success = await GoogleSheetsService.sendBarcodeData(scannedData); // Access static method correctly
      _showSnackbar(success ? "✅ Data sent successfully!" : "❌ Failed to send data.");
    } else {
      _showSnackbar("⚠️ Scan canceled or failed.");
    }

    setState(() => isLoading = false);
  }

  /// Shows a snackbar with a message.
  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scan Barcode")),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    scannedBarcode ?? "No barcode scanned yet.",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: scanBarcode,
                    child: const Text("Start Scanning"),
                  ),
                ],
              ),
      ),
    );
  }
}
