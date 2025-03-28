// test/barcode_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:barcode_reader_app/data/services/barcode_scanner_service.dart'; // Fix missing import

void main() {
  group('Barcode Scanner Unit Test', () {
    final scanner = BarcodeScannerService();

    test('Should return a valid barcode string', () async {
      final result = await scanner.scanBarcode();

      expect(result, isNotNull);
      expect(result, isA<String>());
      expect(result, equals('9876543210'));
    });

    test('Should return null when no barcode is scanned', () async {
      final result = await scanner.scanBarcode();

      expect(result, isNull);
    });

    test('Should handle scanning errors gracefully', () async {
      try {
        await scanner.scanBarcode();
        fail('Expected an exception to be thrown');
      } catch (e) {
        expect(e, isA<Exception>());
      }
    });
  });
}
