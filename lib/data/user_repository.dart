import 'package:care_paw/model/supabase_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/user.dart' as CPUser;
import 'database.dart';

abstract class UserRepository {
  Stream<CPUser.User?> currentUser();

  User? getSignedInUser();

  Future<AuthResponse> signIn(String email, String password);

  Future<AuthResponse> signUp(
      String email, String password, Map<String, dynamic> metadata);

  Future<void> signOut();
}

class UserRepositoryImpl extends UserRepository {
  @override
  Stream<CPUser.User?> currentUser() =>
      supabase.auth.onAuthStateChange.map((event) {
        var raw = event.session?.user;
        return raw?.toCPUser();
      });

  @override
  User? getSignedInUser() => supabase.auth.currentUser;

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
