import 'package:supabase_flutter/supabase_flutter.dart';

import '../main.dart';

abstract class UserRepository {
  Stream<User?> currentUser();

  User? getSignedInUser();

  Future<AuthResponse> signIn(String email, String password);

  Future<AuthResponse> signUp(
      String email, String password, Map<String, dynamic> metadata);

  Future<void> signOut();
}

class UserRepositoryImpl extends UserRepository {
  @override
  Stream<User?> currentUser() =>
      supabase.auth.onAuthStateChange.map((event) => event.session?.user);

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
