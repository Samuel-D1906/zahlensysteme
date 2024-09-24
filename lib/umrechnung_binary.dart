import 'dart:math';

class UmrechnungBinary {
// Umrechnung von Binär zu Dezimal

  int binToDez(int zahl) {
    int restWert = 0;
    int anzahlVerschiebung = 0;
    int dezZahl = 0;

    // geht die schleife solange durch bis man das Komma nicht mehr schieben kann
    while (zahl != 0) {
      restWert = (zahl % 10).toInt();
      zahl = zahl ~/ 10;
      dezZahl = dezZahl + (restWert * (pow(2, anzahlVerschiebung))).toInt();
      anzahlVerschiebung = anzahlVerschiebung + 1;
    }
    return dezZahl;
  }

// Umrechnung von Binär zu Hexadezimal

  dezToHex(int dezZahl) {
    String hexaDezimal = '';
    int restWert = 0;

    //geht durch die schleife bis am ende kein rest mehr bleibt
    while (dezZahl % 16 != 0) {
      restWert = (dezZahl % 16).toInt();
      dezZahl = dezZahl ~/ 16;
      switch (restWert) {
        case 10:
          hexaDezimal = 'A$hexaDezimal';
        case 11:
          hexaDezimal = 'B$hexaDezimal';
        case 12:
          hexaDezimal = 'C$hexaDezimal';
        case 13:
          hexaDezimal = 'D$hexaDezimal';
        case 14:
          hexaDezimal = 'E$hexaDezimal';
        case 15:
          hexaDezimal = 'F$hexaDezimal';
        default:
          hexaDezimal = restWert.toString() + hexaDezimal;
      }
    }
    print('HexaDezimal: $hexaDezimal');
    return hexaDezimal;
  }
}
