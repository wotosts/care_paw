import 'package:care_paw/data/hospital_repository.dart';
import 'package:care_paw/data/image_repository.dart';
import 'package:care_paw/data/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepositoryImpl());

final hospitalRepositoryProvider =
    Provider<HospitalRepository>((ref) => HospitalRepositoryImpl());

final imageRepositoryProvider =
    Provider<ImageRepository>((ref) => ImageRepositoryImpl());