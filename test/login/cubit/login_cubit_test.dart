import 'package:bloc_test/bloc_test.dart';
import 'package:crypto_prices/login/cubit/login_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    test('initial state is 0', () {
      expect(LoginCubit().state, equals(0));
    });

    blocTest<LoginCubit, int>(
      'emits [1] when increment is called',
      build: LoginCubit.new,
      act: (cubit) => cubit.increment(),
      expect: () => [equals(1)],
    );

    blocTest<LoginCubit, int>(
      'emits [-1] when decrement is called',
      build: LoginCubit.new,
      act: (cubit) => cubit.decrement(),
      expect: () => [equals(-1)],
    );
  });
}
