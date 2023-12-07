import 'package:care_paw/data/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepositoryImpl());