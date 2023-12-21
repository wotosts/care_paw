import 'package:care_paw/data/di.dart';
import 'package:care_paw/data/image_repository.dart';
import 'package:care_paw/feature/components/image.dart';
import 'package:care_paw/model/hospitalization.dart';
import 'package:care_paw/feature/components/badge.dart';
import 'package:care_paw/util/EmptyExtensions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';

class AnimalListItem extends StatelessWidget {
  final Hospitalization item;
  final Function()? onClick;

  const AnimalListItem({super.key, required this.item, this.onClick});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Card(
        margin: EdgeInsets.zero,
        color: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: theme.colorScheme.outlineVariant,
            ),
            borderRadius: BorderRadius.circular(16)),
        elevation: 0.0,
        child: InkWell(
          customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          onTap: onClick,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                    width: 56,
                    height: 56,
                    child: SBImage(url: item.animal.imgUrl.orEmpty())),
                const Padding(padding: EdgeInsets.only(left: 14)),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              item.animal.name,
                              style: theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 4)),
                            CPBadge(text: item.animal.species.korean)
                          ],
                        ),
                        Text(
                          item.hospitalizationDateString(),
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: const Color(0xFF79747E)),
                        ),
                        Text(item.animal.note ?? '',
                            style: theme.textTheme.bodySmall
                                ?.copyWith(color: const Color(0xFF79747E)))
                      ],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      item.isBookmarked
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: const Color(0xFFE94235),
                    ))
              ],
            ),
          ),
        ));
  }
}
