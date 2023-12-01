import 'package:care_paw/model/hospitalization_history.dart';
import 'package:care_paw/ui/components/badge.dart';
import 'package:flutter/material.dart';

class AnimalListItem extends StatelessWidget {
  final HospitalizationHistory item;

  const AnimalListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    // todo make clickable card
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
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                    width: 48,
                    height: 48,
                    child: Placeholder(color: Colors.blueGrey)),
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
                        CPBadge(text: item.animal.species)
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
