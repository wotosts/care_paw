import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/user.dart' as cp_user;

abstract class UserRepository {
  Stream<cp_user.User?> currentUser();

  cp_user.User? getSignedInUser();

  Future<AuthResponse> signIn(String email, String password);

  Future<AuthResponse> signUp(
      String email, String password, Map<String, dynamic> metadata);

  Future<void> signOut();
}
