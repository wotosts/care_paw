import 'dart:io';

import 'package:flutter/foundation.dart';

import '../domain/bucket.dart';
import '../domain/image_repository.dart';
import 'database.dart';
import 'package:path/path.dart';


class ImageRepositoryImpl extends ImageRepository {
  @override
  Future<void> deleteImage(String path) {
    // TODO: implement deleteImage
    throw UnimplementedError();
  }

  /// 네이밍 규칙
  /// bucket_업로드날짜_파일명
  /// file name = 병원id_동물이름_분류_생일
  /// 파일명에 한글 포함 불가능
  @override
  Future<String> uploadImage(Bucket bucket, File file, String name) async {
    var uploadName =
        '${bucket.name}_${DateTime.now()}_${name.hashCode}${extension(
        file.path)}';

    if (kDebugMode) {
      print(uploadName);
    }

    final String path = await supabase.storage
        .from('${bucket.name}_image')
        .upload(uploadName, file);

    return path;
  }

  @override
  Future<String> getUrl(Bucket bucket, String? name) async {
    if (name == null) {
      return '';
    } else {
      return supabase.storage
          .from('${bucket.name}_image')
          .getPublicUrl(name);
    }
  }
}
