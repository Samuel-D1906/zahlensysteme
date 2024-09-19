import 'package:test/test.dart';
import 'package:zahlensysteme/umrechnung_binary.dart';

void main() {
  test('Umrechnung in Dezimal', () {
    expect(UmrechnungBinary().binToDez(1111000), 120);
    expect(UmrechnungBinary().binToDez(1111000111), 967);
    expect(UmrechnungBinary().binToDez(1111010011), 979);
    expect(UmrechnungBinary().binToDez(00010101), 21);
  });

  test('Umrechnung in HexaDezimal', () {
    expect(UmrechnungBinary().binToHex(1111000), '78');
    expect(UmrechnungBinary().binToHex(1111000111), '3C7');
    expect(UmrechnungBinary().binToHex(1111010011), '3D3');
    expect(UmrechnungBinary().binToHex(00010101), '15');
  });
}
