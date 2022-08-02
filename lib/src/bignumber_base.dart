class BigNumber {
  BigInt _value = BigInt.zero;
  int _numberOfFractionDigits = 0;

  BigNumber({required int intPart, required int fractionPart}) {
    _value = _concatIntParts2BigInt(intPart, fractionPart);
    _numberOfFractionDigits = _numberIntOfDigits(fractionPart);
  }

  BigInt _concatIntParts2BigInt(int intPart, int fracPart) {
    return BigInt.parse(intPart.toString() + fracPart.toString());
  }

  static int _numberIntOfDigits(int num) {
    return num.toString().length;
  }
}
