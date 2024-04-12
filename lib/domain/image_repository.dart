import 'dart:io';

import 'bucket.dart';



abstract class ImageRepository {
  Future<String> uploadImage(Bucket bucket, File file, String name);

  Future<void> deleteImage(String path);

  Future<String> getUrl(Bucket bucket, String? name);
}
