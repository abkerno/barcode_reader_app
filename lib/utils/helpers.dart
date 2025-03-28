// lib/utils/helpers.dart

import 'package:intl/intl.dart';

/// A helper class that provides utility functions for formatting and validation.
class Helpers {
  /// Formats a DateTime object into a readable string.
  static String formatDateTime(DateTime dateTime, {String format = 'yyyy-MM-dd HH:mm'}) {
    return DateFormat(format).format(dateTime);
  }

  /// Validates if a given string is a valid email.
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  /// Validates if a given string is a valid phone number.
  static bool isValidPhone(String phone) {
    final phoneRegex = RegExp(r'^\+?[0-9]{7,15}$');
    return phoneRegex.hasMatch(phone);
  }

  /// Converts a string to title case.
  static String toTitleCase(String text) {
    if (text.isEmpty) return text;
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  /// Returns a fallback value if the input is null or empty.
  static String fallback(String? value, String fallback) {
    return (value == null || value.trim().isEmpty) ? fallback : value;
  }

  /// Formats a DateTime object into a date string.
  String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }
}
