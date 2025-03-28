// lib/data/models/barcode_data.dart

import 'dart:convert';

/// Represents a scanned barcode's data.
class BarcodeData {
  final String value;   // Scanned barcode value
  final String format;  // Barcode format (QR, EAN, etc.)
  final DateTime scannedAt; // Timestamp of scan

  BarcodeData({
    required this.value,
    required this.format,
    required this.scannedAt,
  });

  /// Converts a BarcodeData instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      "value": value,
      "format": format,
      "scannedAt": scannedAt.toIso8601String(),
    };
  }

  /// Creates a BarcodeData instance from a JSON map.
  factory BarcodeData.fromJson(Map<String, dynamic> json) {
    return BarcodeData(
      value: json["value"] ?? "",
      format: json["format"] ?? "UNKNOWN",
      scannedAt: DateTime.tryParse(json["scannedAt"] ?? "") ?? DateTime.now(),
    );
  }

  /// Converts the object to a JSON string.
  String toRawJson() => json.encode(toJson());

  /// Creates an object from a JSON string.
  factory BarcodeData.fromRawJson(String str) =>
      BarcodeData.fromJson(json.decode(str));

  /// Creates a copy with optional modifications.
  BarcodeData copyWith({
    String? value,
    String? format,
    DateTime? scannedAt,
  }) {
    return BarcodeData(
      value: value ?? this.value,
      format: format ?? this.format,
      scannedAt: scannedAt ?? this.scannedAt,
    );
  }

  @override
  String toString() =>
      "BarcodeData(value: $value, format: $format, scannedAt: $scannedAt)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BarcodeData &&
        other.value == value &&
        other.format == format &&
        other.scannedAt == scannedAt;
  }

  @override
  int get hashCode => value.hashCode ^ format.hashCode ^ scannedAt.hashCode;
}
