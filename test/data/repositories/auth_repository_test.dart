import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mage8/Model/User.dart';
import 'package:mage8/constants/api.dart';
import 'package:mage8/data/repositories/auth_repository.dart';

// always run this
void main() {
  String? token;

  final dio = Dio(kBaseOptions)
    ..interceptors.add(InterceptorsWrapper(
      onRequest: ((options, handler) {
        options.headers['Authorization'] = 'Bearer $token';
        handler.next(options);
      }),
    ));

  final repository = AuthRepository(dio);

  test('test sign in with debug token', () async {
    final user =
        await repository.loginWithGoogle('debug_token', 'flutter_test');

    user.fold(
      (e) => fail('should not fail'),
      (t) {
        expect(t, isA<String>());

        token = t;
      },
    );
  });

  test('test current user', () async {
    final user = await repository.currentUser();

    user.fold(
      (e) => fail('should not fail'),
      (u) {
        expect(u, isA<User>());
      },
    );
  });

  test('user logout', () async {
    final user = await repository.currentUser();
    await repository.logout();
    final user2 = await repository.currentUser();

    user.fold(
      (e) => fail('should not fail'),
      (u) {
        expect(u, isA<User>());
      },
    );

    user2.fold(
      (e) => expect(e, isA<Exception>()),
      (u) => fail('should not success'),
    );
  });
}
