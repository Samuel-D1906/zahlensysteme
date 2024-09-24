import 'dart:math';

import 'package:zahlensysteme/umrechnung_decimal.dart';

class UmrechnungHex {
  // Umrechnung von Hexadezimal zu Binär

  hexToBin(String hexa) {
    int dezimal = hexToDez(hexa);
    String binZahl = UmrechnungDecimal().dezToBin(dezimal);
    return binZahl;
  }

  // Umrechnung von Hexadezimal zu Dezimal

  hexToDez(String hexa) {
    int? sumDezimal = 0;
    int? dezimal;
    int exponent;
    //geht durch die schleife bis am ende kein rest mehr bleibt
    for (var i = 0; i < hexa.length; i++) {
      if (i == 0) {
        exponent = hexa.length + (i - 1);
      } else {
        exponent = hexa.length - (i + 1);
      }

      String ziffer = hexa[i];
      switch (ziffer) {
        case '1':
          dezimal = (1 * (pow(16, exponent)).toInt());
        case '2':
          dezimal = (2 * (pow(16, exponent)).toInt());
        case '3':
          dezimal = (3 * (pow(16, exponent)).toInt());
        case '4':
          dezimal = (4 * (pow(16, exponent)).toInt());
        case '5':
          dezimal = (5 * (pow(16, exponent)).toInt());
        case '6':
          dezimal = (6 * (pow(16, exponent)).toInt());
        case '7':
          dezimal = (7 * (pow(16, exponent)).toInt());
        case '8':
          dezimal = (8 * (pow(16, exponent)).toInt());
        case '9':
          dezimal = (9 * (pow(16, exponent)).toInt());
        case 'A':
          dezimal = ((10 * (pow(16, exponent)).toInt()));
        case 'B':
          dezimal = (11 * (pow(16, exponent)).toInt());
        case 'C':
          dezimal = (12 * (pow(16, exponent)).toInt());
        case 'D':
          dezimal = (13 * (pow(16, exponent)).toInt());
        case 'E':
          dezimal = (14 * (pow(16, exponent)).toInt());
        case 'F':
          dezimal = (15 * (pow(16, exponent)).toInt());
      }
      sumDezimal = (sumDezimal! + dezimal!);
    }
    return sumDezimal;
  }
}
