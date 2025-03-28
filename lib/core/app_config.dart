// lib/core/app_config.dart

import 'constants.dart';

/// Application configuration settings.
class AppConfig {
  /// Determines if the app is running in debug mode.
  static const bool isDebugMode = true;

  /// Base API URL for backend services.
  static const String baseApiUrl = "https://api.example.com"; // 🔥 Replace with actual API URL

  /// Google Sheets API URL with API key.
  static String get googleSheetsFullUrl =>
      "${AppConstants.googleSheetsUrl}?key=${AppConstants.apiKey}";

  /// Logger settings: Enable detailed logging in debug mode.
  static void log(String message) {
    if (isDebugMode) {
      print("[LOG] $message");
    }
  }
}
