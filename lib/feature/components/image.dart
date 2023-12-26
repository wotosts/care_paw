import 'package:care_paw/util/EmptyExtensions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';

import '../../data/di.dart';
import '../../data/image_repository.dart';

/// supabase image
class SBImage extends ConsumerWidget {
  final String? url;

  const SBImage({required this.url});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var imageRepository = ref.read(imageRepositoryProvider);

    return Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.antiAlias,
        child: Center(
            child: FutureBuilder(
                future: imageRepository.getUrl(Bucket.animal, basename(url.orEmpty())),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(snapshot.data.orEmpty()).image)));
                  } else {
                    return Icon(Icons.pix,
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer);
                  }
                })));
  }
}
