import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_apps/model/arithmetic.dart';

void main(){
  group('add & sub test',(){
  test('add two number',(){
    final arithmetic = Arithmetic();
    arithmetic.first = 3;
    int expectedValue = 7;
    arithmetic.second = 4;
    int actualValue = arithmetic.add();
    expect(expectedValue, actualValue);
  });
  test('Sub two number',(){
    final arithmetic = Arithmetic();
    arithmetic.first = 5;
    int expectedValue = 1;
    arithmetic.second = 4;
    int actualValue = arithmetic.subtract();
    expect(expectedValue, actualValue);
  });
  });

  group('Mul & divide test', (){
    test('Mul two number',(){
    final arithmetic = Arithmetic();
    arithmetic.first = 3;
    int expectedValue = 9;
    arithmetic.second = 3;
    int actualValue = arithmetic.multiply();
    expect(expectedValue, actualValue);
  });
  test('divide two number',(){
    final arithmetic = Arithmetic();
    arithmetic.first = 5;
    int expectedValue = 10;
    arithmetic.second = 2;
    int actualValue = arithmetic.divide();
    expect(expectedValue, actualValue);
  });
  });
}