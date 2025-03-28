// lib/data/services/google_sheets_service.dart

import 'package:http/http.dart' as http;
import 'dart:convert';

/// Service for sending barcode data to Google Sheets.
class GoogleSheetsService {
  static const String scriptURL = "YOUR_GOOGLE_APPS_SCRIPT_URL_HERE";

  /// Sends scanned barcode data with timestamp to Google Sheets.
  static Future<bool> sendBarcodeData(String barcodeValue) async {
    try {
      final response = await http.post(
        Uri.parse(scriptURL),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "barcode": barcodeValue,
          "timestamp": DateTime.now().toIso8601String(),
        }),
      );

      if (response.statusCode == 200) {
        print("✅ Data sent successfully: $barcodeValue");
        return true;
      } else {
        print("❌ Failed to send data: ${response.body}");
        return false;
      }
    } catch (e) {
      print("⚠️ Error sending data: $e");
      return false;
    }
  }

  void saveData(String data) {
    // Simulate saving data to Google Sheets
    print("Data saved to Google Sheets: $data");
  }
}
