import 'package:flutter_test/flutter_test.dart';
import 'package:barcode_reader_app/data/services/google_sheets_service.dart';

void main() {
  test('GoogleSheetsService saves data', () {
    final service = GoogleSheetsService();
    service.saveData("Test Data");
  });
}
