import 'package:bloc_test/bloc_test.dart';
import 'package:crypto_prices/login/cubit/login_cubit.dart';
import 'package:crypto_prices/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockLoginCubit extends MockCubit<int> implements LoginCubit {}

void main() {
  group('CounterPage', () {
    testWidgets('renders CounterView', (tester) async {
      await tester.pumpApp(const LoginPage());
      expect(find.byType(SignInSignUpView), findsOneWidget);
    });
  });

  group('CounterView', () {
    late LoginCubit counterCubit;

    setUp(() {
      counterCubit = MockLoginCubit();
    });

    testWidgets('renders current count', (tester) async {
      const state = 42;
      when(() => counterCubit.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: counterCubit,
          child: const SignInSignUpView(),
        ),
      );
      expect(find.text('$state'), findsOneWidget);
    });

    testWidgets('calls increment when increment button is tapped',
        (tester) async {
      when(() => counterCubit.state).thenReturn(0);
      when(() => counterCubit.increment()).thenReturn(null);
      await tester.pumpApp(
        BlocProvider.value(
          value: counterCubit,
          child: const SignInSignUpView(),
        ),
      );
      await tester.tap(find.byIcon(Icons.add));
      verify(() => counterCubit.increment()).called(1);
    });
  });
}
