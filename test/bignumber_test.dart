import 'package:bignumber/bignumber.dart';
import 'package:test/test.dart';

void main() {
  group('constructor test', () {
    test('constructor tests', () {
      final num = BigNumber(intPart: 123, fractionPart: 456);
      expect(num.toDouble(), 123.456);
    });
  });
}
