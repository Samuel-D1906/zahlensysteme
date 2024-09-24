class UmrechnungDecimal {
  // Umrechnung von Dezimal zu Binär

  dezToBin(int dezZahl) {
    String binZahl = '';
    int dezZahlNeu = 0;

    while (dezZahl != 0) {
      binZahl = ((dezZahl % 2).toString() + binZahl.toString());
      dezZahlNeu = dezZahl ~/ 2;
      dezZahl = dezZahlNeu;
    }
    return binZahl;
  }
}
