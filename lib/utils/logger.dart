// lib/utils/logger.dart

import 'dart:developer' as dev;

/// A logger utility for debugging and tracking application events.
class Logger {
  /// Logs an informational message.
  static void info(String message) {
    dev.log('ℹ️ INFO: $message');
  }

  /// Logs a warning message.
  static void warn(String message) {
    dev.log('⚠️ WARNING: $message');
  }

  /// Logs an error message with an optional exception.
  static void error(String message, {Object? error, StackTrace? stackTrace}) {
    dev.log('❌ ERROR: $message', error: error, stackTrace: stackTrace);
  }

  /// Logs a success message.
  static void success(String message) {
    dev.log('✅ SUCCESS: $message');
  }

  /// Logs debug information (used for development only).
  static void debug(String message) {
    dev.log('🐛 DEBUG: $message');
  }
}
