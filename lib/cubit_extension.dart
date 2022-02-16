library cubit_extension;

import 'dart:math';

import 'package:bloc/bloc.dart';

CubitOf<T> cubitOf<T>(T value) {
  return CubitOf(value);
}

class CubitOf<T> extends Cubit<T> {
  CubitOf(T value) : super(value);

  T get value => state;

  set value(T value) => emit(value);
}

CubitListOf<T> cubitListOf<T>([List<T>? initialValue]) {
  return CubitListOf<T>(initialValue);
}

class CubitListOf<T> extends Cubit<List<T>> {
  CubitListOf([List<T>? initialValue]) : super(initialValue ?? []);

  List<T> get value => state;

  set value(List<T> value) => emit(value);

  int get length => state.length;

  /// Adds an item and emits result.
  void add(T item) => {state.add(item), emit(state)};

  /// Adds all items from iterable and emits result.
  void addAll(Iterable<T> iterable) => {state.addAll(iterable), emit(state)};

  /// Removes item from list and emits new list.
  void remove(T item) => {state.remove(item), emit(state)};

  /// Sorts list by comparison and emits new list.
  void sort([int Function(T a, T b)? compare]) =>
      {state.sort(compare), emit(state)};

  /// Shuffles the elements of this list randomly and emits result.
  void shuffle([Random? random]) => {state.shuffle(random), emit(state)};

  /// Clears the list and emits the result.
  void clear() => {state.clear(), emit(state)};
}
