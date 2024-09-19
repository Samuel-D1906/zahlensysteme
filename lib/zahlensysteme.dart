import 'dart:io';

/// Beeinhaltet alle Umrechnungsformen um von Binär, Dezimal oder Hexadezimal zu berechnen

class ZahlensystemUmrechnung {
  // UmrechnungsMenü erstellen mit switch case

  /// Zeigt eine Liste von Optionen(Umrechnungen) an welche der User auswählen kann

  void umrechnungGui() {
    print('Bitte geben sie eine Zahl ein?:');

    int? zahl = int.parse(stdin.readLineSync()!); //Input vom User als Integer entgegennehmen

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
    print('Möchten sie zu Dezimal oder Hexadezimal umrechnen?'); // den User fragen zu was er umrechnen Möchte
    print('1:Dezimal');
    print('2:Hexadezimal');
    String? dezOderHex = stdin.readLineSync()!.toLowerCase();
    switch (dezOderHex) {
      case '1':
      //binToDez();
      case '2':
      //binToHex();
    }
  }

  /// Gui für die Umrechnung von Dezimal zu Binär oder Hex
  void dezUmrechnung() {
    print('Möchten sie zu Dezimal oder Hexadezimal umrechnen?'); // den User fragen zu was er umrechnen Möchte
    print('1:Binär');
    print('2:Hexadezimal');
    String? binOderHex = stdin.readLineSync()!.toLowerCase();
    switch (binOderHex) {
      case '1':
      //dezToBin();
      case '2':
      //dezToHex();
    }
  }

  /// Gui für die Umrechnung von Hexadezimal zu Dezimal oder Binär

  void hexUmrechnung() {
    print('Möchten sie zu Dezimal oder Hexadezimal umrechnen?'); // den User fragen zu was er umrechnen Möchte
    print('1:Binär');
    print('2:Dezimal');
    String? binOderDez = stdin.readLineSync()!.toLowerCase();
    switch (binOderDez) {
      case '1':
      //hexToBin();
      case '2':
      //hexToDez();
    }
  }
}
