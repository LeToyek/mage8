import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mage8/Model/user.dart';
import 'package:mage8/data/repositories/auth_repository.dart';
import 'package:mage8/provider/google_signin_provider.dart';

final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  return UserNotifier(
      ref.read(authRepositoryProvider), ref.read(googleProvider));
});

class UserNotifier extends StateNotifier<User?> {
  AuthRepository _authRepository;
  GoogleSignIn _googleSignIn;

  UserNotifier(this._authRepository, this._googleSignIn) : super(null);

  Future<void> loginUser() async {
    try {
      GoogleSignInAccount? result = await _googleSignIn.signIn();
      if (result == null) {
        state = null;
        return;
      }
      final auth = await result.authentication;
      if (auth.accessToken == null) {
        state = null;
        return;
      }
      final token =
          await _authRepository.loginWithGoogle(auth.accessToken!, "sikama");
      await token.fold((error) async => state = null, (value) async {
        await const FlutterSecureStorage().write(key: "token", value: value);
        await loadUser();
      });
    } catch (error) {
      print(error);
    }
  }

  Future<void> loadUser() async {
    final result = await _authRepository.currentUser();
    result.fold(
      (error) => state = null,
      (user) => state = user as User,
    );
  }
}
