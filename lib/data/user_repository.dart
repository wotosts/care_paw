import 'package:care_paw/model/supabase_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../domain/user_repository.dart';
import '../model/user.dart' as cp_user;
import 'database.dart';


class UserRepositoryImpl extends UserRepository {
  @override
  Stream<cp_user.User?> currentUser() =>
      supabase.auth.onAuthStateChange.map((event) {
        var raw = event.session?.user;
        return raw?.toCPUser();
      });

  @override
  cp_user.User? getSignedInUser() => supabase.auth.currentUser?.toCPUser();

  @override
  Future<AuthResponse> signIn(String email, String password) =>
      supabase.auth.signInWithPassword(email: email, password: password);

  @override
  Future<AuthResponse> signUp(
          String email, String password, Map<String, dynamic> metadata) =>
      supabase.auth.signUp(email: email, password: password, data: metadata);

  @override
  Future<void> signOut() => supabase.auth.signOut();
}
