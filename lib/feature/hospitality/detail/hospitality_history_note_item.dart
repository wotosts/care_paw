import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/util/DateTimeUtil.dart';
import 'package:flutter/material.dart';

import '../../../model/hospitalization_history_note.dart';

class HospitalityHistoryNoteItem extends StatelessWidget {
  final HospitalizationHistoryNote item;

  const HospitalityHistoryNoteItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var imgSize = MediaQuery.of(context).size.width / 3 - 40;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      color: theme.colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Container(
                    height: 24,
                    width: 24,
                    color: theme.colorScheme.primary,
                    child: Center(
                        child: Text(
                      item.userNickname[0] ?? 'X',
                      style: theme.textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimary),
                    ))),
              ),
              const SizedSpacer(
                width: 16,
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.userNickname,
                            style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            item.added.toDateString(),
                            style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        item.title,
                        style: theme.textTheme.bodyLarge,
                      ),
                      if (item.description != null)
                        Text(
                          item.description!,
                          style: theme.textTheme.bodyMedium,
                        ),
                    ]),
              ),
            ],
          ),
          if (item.imgUrls != null)
            Container(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              margin: const EdgeInsets.only(left: 40),
              child: Wrap(spacing: 8, runSpacing: 8, children: [
                for (String url in item.imgUrls!)
                  SizedBox(
                    width: imgSize,
                    height: imgSize,
                    child: Placeholder(child: Center(child: Text(url))),
                  ),
              ]),
            ),
        ],
      ),
    );
  }
}
