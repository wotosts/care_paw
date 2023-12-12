import 'package:supabase_flutter/supabase_flutter.dart';

import '../main.dart';
import '../model/user.dart' as CPUser;

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
        return CPUser.User(
            email: raw?.email ?? '',
            nickname: raw?.userMetadata?['nickname'],
            occupation: raw?.userMetadata?['occupation'],
            hospitalId: raw?.userMetadata?['hospitalId']);
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
