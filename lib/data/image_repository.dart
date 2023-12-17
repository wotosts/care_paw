import 'dart:io';

import 'package:flutter/foundation.dart';

import 'database.dart';
import 'package:path/path.dart';

enum Bucket { animal, hospitalization }

abstract class ImageRepository {
  Future<String> uploadImage(Bucket bucket, File file, String name);

  Future<void> deleteImage(String path);
}

class ImageRepositoryImpl extends ImageRepository {
  @override
  Future<void> deleteImage(String path) {
    // TODO: implement deleteImage
    throw UnimplementedError();
  }

  /// 네이밍 규칙
  /// bucket_업로드날짜_파일명
  /// file name = 병원id_동물이름_분류_생일
  @override
  Future<String> uploadImage(Bucket bucket, File file, String name) async {
    // todo 이미지 이름 관련 오류 확인
    var uploadName = '${bucket}_${DateTime.now()}_$name.${extension(file.path)}';

    if (kDebugMode) {
      print(uploadName);
    }

    final String path = await supabase.storage
        .from('${bucket.name}_image')
        .upload('${bucket}_${DateTime.now()}_$name${extension(file.path)}', file);

    return path;
  }
}
