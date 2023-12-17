import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagePickerUtil {
  ImagePickerUtil._internal();

  factory ImagePickerUtil.getInstance() => _instance;
  static final ImagePickerUtil _instance = ImagePickerUtil._internal();

  final ImagePicker _picker = ImagePicker();

  Future<XFile?> selectSingleImage() async {
    final XFile? picked = await _picker.pickImage(source: ImageSource.gallery);
    return picked;
  }

  Future<List<XFile?>> selectImages() async {
    final picked = await _picker.pickMultiImage();
    return picked;
  }
}

extension XFileExtension on XFile {
  File toFile() {
    return File(path);
  }
}