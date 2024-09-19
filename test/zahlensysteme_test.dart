import 'package:test/test.dart';
import 'package:zahlensysteme/umrechnung_binary.dart';
import 'package:zahlensysteme/umrechnung_decimal.dart';

void main() {
  test('Umrechnung von Binär in Dezimal', () {
    expect(UmrechnungBinary().binToDez(1111000), 120);
    expect(UmrechnungBinary().binToDez(1111000111), 967);
    expect(UmrechnungBinary().binToDez(1111010011), 979);
    expect(UmrechnungBinary().binToDez(00010101), 21);
  });

  test('Umrechnung von Binär in HexaDezimal', () {
    expect(UmrechnungBinary().binToHex(UmrechnungBinary().binToDez(1111000)), '78');
    expect(UmrechnungBinary().binToHex(UmrechnungBinary().binToDez(1111000111)), '3C7');
    expect(UmrechnungBinary().binToHex(UmrechnungBinary().binToDez(1111010011)), '3D3');
    expect(UmrechnungBinary().binToHex(UmrechnungBinary().binToDez(00010101)), '15');
  });

  test('Umrechnung von Dezimal in HexaDezimal', () {
    expect(UmrechnungBinary().binToHex(120), '78');
    expect(UmrechnungBinary().binToHex(967), '3C7');
    expect(UmrechnungBinary().binToHex(979), '3D3');
    expect(UmrechnungBinary().binToHex(21), '15');
  });
}
