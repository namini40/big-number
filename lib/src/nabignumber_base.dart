class BigNumber {
  BigInt _value = BigInt.zero;
  int _numberOfFractionDigits = 0;
  late int length;

  BigNumber({required int intPart, required int fractionPart}) {
    _value = _concatIntParts2BigInt(intPart, fractionPart);
    _numberOfFractionDigits = _numberIntOfDigits(fractionPart);
    length = _value.toString().length + _numberOfFractionDigits;
  }

  BigInt _concatIntParts2BigInt(int intPart, int fracPart) {
    return BigInt.parse(intPart.toString() + fracPart.toString());
  }

  static int _numberIntOfDigits(int num) {
    return num.toString().length;
  }

  double toDouble() {
    String numString = _value.toString();
    return double.parse(
        '${numString.substring(0, length - _numberOfFractionDigits - 1)}.${numString.substring(length - _numberOfFractionDigits - 1, length - 1)}');
  }
}
