// lib/data/services/barcode_scanner_service.dart

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../models/barcode_data.dart';

/// Service for scanning barcodes.
class BarcodeScannerService {
  /// Scans a barcode using the device camera.
  static Future<BarcodeData?> scanBarcodeStatic() async {
    try {
      // Start scanning (returns scanned data or "-1" if canceled)
      String scannedValue = await FlutterBarcodeScanner.scanBarcode(
        "#FF6F00", // Scanner overlay color
        "Cancel",  // Cancel button text
        true,      // Show flash icon
        ScanMode.BARCODE, // Scan mode (BARCODE or QR)
      );

      // If the user cancels the scan, return null
      if (scannedValue == "-1") return null;

      // Create and return a BarcodeData object
      return BarcodeData(
        value: scannedValue,
        format: "UNKNOWN", // Format detection can be enhanced
        scannedAt: DateTime.now(),
      );
    } catch (e) {
      print("Error scanning barcode: $e");
      return null;
    }
  }

  Future<String> scanBarcode() async {
    // Simulate barcode scanning logic
    return "1234567890";
  }
}
