import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitClass extends Cubit<int> {
  //inital state
  CounterCubitClass() : super(0);

  void increment() {
    print('Before: $state');
    emit(state + 1);
    print('After: $state');
  }

  void decrement() {
    if (state == 0) return;
    emit(state - 1);
  }
}
