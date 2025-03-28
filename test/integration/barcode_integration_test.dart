// integration/barcode_integration_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:barcode_reader_app/data/services/barcode_scanner_service.dart';

void main() {
  test('BarcodeScannerService scans barcode', () {
    final scanner = BarcodeScannerService();
    final result = scanner.scanBarcode();
    expect(result, isNotEmpty);
  });
}
