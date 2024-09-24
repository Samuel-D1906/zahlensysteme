import 'package:test/test.dart';
import 'package:zahlensysteme/umrechnung_binary.dart';
import 'package:zahlensysteme/umrechnung_decimal.dart';
import 'package:zahlensysteme/umrechnung_hex.dart';

void main() {
  test('Umrechnung von Binär in Dezimal', () {
    expect(UmrechnungBinary().binToDez(1111000), 120);
    expect(UmrechnungBinary().binToDez(1111000111), 967);
    expect(UmrechnungBinary().binToDez(1111010011), 979);
    expect(UmrechnungBinary().binToDez(00010101), 21);
  });

  test('Umrechnung von Binär in HexaDezimal', () {
    expect(UmrechnungBinary().dezToHex(UmrechnungBinary().binToDez(1111000)), '78');
    expect(UmrechnungBinary().dezToHex(UmrechnungBinary().binToDez(1111000111)), '3C7');
    expect(UmrechnungBinary().dezToHex(UmrechnungBinary().binToDez(1111010011)), '3D3');
    expect(UmrechnungBinary().dezToHex(UmrechnungBinary().binToDez(00010101)), '15');
  });

  test('Umrechnung von Dezimal in HexaDezimal', () {
    expect(UmrechnungBinary().dezToHex(120), '78');
    expect(UmrechnungBinary().dezToHex(967), '3C7');
    expect(UmrechnungBinary().dezToHex(979), '3D3');
    expect(UmrechnungBinary().dezToHex(21), '15');
  });

  test('Umrechnung von Dezimal in Binär', () {
    expect(UmrechnungDecimal().dezToBin(42), '101010');
    expect(UmrechnungDecimal().dezToBin(122), '1111010');
    expect(UmrechnungDecimal().dezToBin(979), '1111010011');
    expect(UmrechnungDecimal().dezToBin(456), '111001000');
  });

  test('Umrechnung von Hexadezimal in Dezimal', () {
    expect(UmrechnungHex().hexToDez('A6D3'), 42707);
    expect(UmrechnungHex().hexToDez('A6D7'), 42711);
    expect(UmrechnungHex().hexToDez('3C7'), 967);
    expect(UmrechnungHex().hexToDez('3D3'), 979);
    expect(UmrechnungHex().hexToDez('15'), 21);
  });

  test('Umrechnung von Hexadezimal in Binär', () {
    expect(UmrechnungHex().hexToBin('A6D7'), '1010011011010111');
    expect(UmrechnungHex().hexToBin('3C7'), '1111000111');
    expect(UmrechnungHex().hexToBin('3D3'), '1111010011');
    expect(UmrechnungHex().hexToBin('15'), '10101');
    expect(UmrechnungHex().hexToBin('A6D3'), '1010011011010011');
  });
}
