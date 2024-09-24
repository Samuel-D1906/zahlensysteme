import 'dart:io';

import 'package:zahlensysteme/umrechnung_binary.dart';
import 'package:zahlensysteme/umrechnung_decimal.dart';
import 'package:zahlensysteme/umrechnung_hex.dart';

/// Beeinhaltet alle Umrechnungsformen um von Binär, Dezimal oder Hexadezimal zu berechnen

class ZahlensystemUmrechnung {
  // UmrechnungsMenü erstellen mit switch case

  /// Zeigt eine Liste von Optionen(Umrechnungen) an welche der User auswählen kann

  void umrechnungGui() {
    //Input vom User als Integer entgegennehmen
    print('handelt es sich um eine Binär, Dezimal oder Hexadezimal Zahl?');
    print('1:Binär');
    print('2:Dezimal');
    print('3:Hexadezimal');

    String? umrechnungsForm = stdin
        .readLineSync()!
        .toLowerCase(); // to LowerCase um Case sensitive zu umgehen und mögliche fehler zu umgehen.
    switch (umrechnungsForm) {
      case '1':
        binUmrechnung();
      case '2':
        dezUmrechnung();
      case '3':
        hexUmrechnung();
      default:
        print('Kein Gültigen Wert eingegeben!');
        break;
    }
  }

  /// Gui für die Umrechnung von Binär zu Dezimal oder Hex
  void binUmrechnung() {
    print('Bitte geben sie eine Binär Zahl ein?:');
    String? zahlString = stdin.readLineSync();
    int zahl = int.parse(zahlString!);
    print('Möchten sie zu Dezimal oder Hexadezimal umrechnen?'); // den User fragen zu was er umrechnen Möchte
    print('1:Dezimal');
    print('2:Hexadezimal');
    String? dezOderHex = stdin.readLineSync()!.toLowerCase();
    switch (dezOderHex) {
      case '1':
        print(UmrechnungBinary().binToDez(zahl));
      case '2':
        int dezZahl = UmrechnungBinary().binToDez(zahl);
        print(UmrechnungBinary().dezToHex(dezZahl));
    }
  }

  /// Gui für die Umrechnung von Dezimal zu Binär oder Hex
  void dezUmrechnung() {
    print('Bitte geben sie eine Dezimal Zahl ein?:');
    String? zahlString = stdin.readLineSync();
    int zahl = int.parse(zahlString!);
    print('Möchten sie zu Binär oder Hexadezimal umrechnen?'); // den User fragen zu was er umrechnen Möchte
    print('1:Binär');
    print('2:Hexadezimal');
    String? binOderHex = stdin.readLineSync()!.toLowerCase();
    switch (binOderHex) {
      case '1':
        UmrechnungDecimal().dezToBin(zahl);
      case '2':
        UmrechnungBinary().dezToHex(zahl);
    }
  }

  /// Gui für die Umrechnung von Hexadezimal zu Dezimal oder Binär

  void hexUmrechnung() {
    print('Bitte geben sie eine Hexadezimal Zahl ein?:');
    String? zahl = stdin.readLineSync();
    print('Möchten sie zu Dezimal oder Hexadezimal umrechnen?'); // den User fragen zu was er umrechnen Möchte
    print('1:Binär');
    print('2:Dezimal');
    String? binOderDez = stdin.readLineSync()!.toLowerCase();
    switch (binOderDez) {
      case '1':
        UmrechnungHex().hexToBin(zahl!);
      case '2':
        UmrechnungHex().hexToDez(zahl!);
    }
  }
}
