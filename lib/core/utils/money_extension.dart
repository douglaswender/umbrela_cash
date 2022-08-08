extension MoneyParsing on int {
  String toReal() {
    return 'R\$ ${(this / 100).toStringAsFixed(2).replaceAll('.', ',')}';
  }
}
