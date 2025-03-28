// lib/core/constants.dart

/// Application-wide constants used throughout the project.
class AppConstants {
  static const String appName = "Barcode Reader App";
  static const String defaultBarcodeFormat = "QR_CODE";
  
  // Google Sheets API
  static const String googleSheetsUrl = "https://sheets.googleapis.com/v4/spreadsheets";
  static const String apiKey = "YOUR_GOOGLE_SHEETS_API_KEY"; // 🔥 Replace with actual key

  // Storage Paths
  static const String barcodeImagePath = "assets/images/barcode_placeholder.png";

  // Error Messages
  static const String errorInvalidBarcode = "Invalid barcode scanned!";
  static const String errorNetworkIssue = "Network error, please try again.";
}
