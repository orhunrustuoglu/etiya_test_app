import 'package:etiya_test_app/bloc/user_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  // commented out the auto_route_generator package in the pubspec.yaml
  //because its incompatible with the bloc_test package
  //which is needed for unit testing
  group('UserBloc', () {
    blocTest(
      'emits UserLoaded state when FetchUsers event is added',
      build: () => UserBloc()..add(FetchUsers()),
      wait: const Duration(seconds: 2),
      expect: () => [isA<UserLoaded>()],
    );
  });
}
