import 'package:flutter_test/flutter_test.dart';

import 'package:cubit_extension/cubit_extension.dart';

void main() {
  test('mutates the string value of cubit', () {
    final cubit = cubitOf<String>("initial");
    expect(cubit.value, "initial");
    cubit.value = "second";
    expect(cubit.value, "second");
  });

  test('mutates a list cubit', () {
    final cubitList = cubitListOf<String>();
    expect(cubitList.length, 0);
    cubitList.add("newItem");
    expect(cubitList.length, 1);
  });
}
