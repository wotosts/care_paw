import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../util/ImagePickerUtil.dart';

class PickableImage extends StatefulWidget {
  const PickableImage({super.key, this.onPicked});

  final Function(XFile?)? onPicked;

  @override
  State<PickableImage> createState() => _PickableImageState();
}

class _PickableImageState extends State<PickableImage> {
  XFile? _image;

  void updateImage(XFile? image) {
    setState(() {
      _image = image;
    });

    widget.onPicked?.call(image);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 128,
        height: 128,
        child: Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.secondaryContainer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            clipBehavior: Clip.antiAlias,
            child: Stack(children: [
              InkWell(
                  onTap: _image == null
                      ? () {
                          ImagePickerUtil.getInstance()
                              .selectSingleImage()
                              .then((value) {
                            updateImage(value);
                          });
                        }
                      : null,
                  child: Center(
                    child: _image != null
                        ? Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        Image.file(File(_image!.path)).image)))
                        : Icon(
                            size: 64,
                            Icons.image_outlined,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                  )),
              if (_image != null)
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white.withOpacity(0.5)),
                      ),
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        updateImage(null);
                      },
                    ))
            ])));
  }
}
