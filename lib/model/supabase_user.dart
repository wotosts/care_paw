import 'package:care_paw/model/user.dart';
import 'package:care_paw/util/EmptyExtensions.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as SB;

extension UserExtension on SB.User {
  User toCPUser() => User(
      id: id,
      email: email!.orEmpty(),
      nickname: userMetadata?['nickname'] ?? '',
      occupation: userMetadata?['occupation'] ?? '',
      hospitalId: userMetadata?['hospitalId'] ?? '');
}
