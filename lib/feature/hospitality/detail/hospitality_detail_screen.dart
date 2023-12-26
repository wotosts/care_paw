import 'package:care_paw/feature/components/expandable_fab.dart';
import 'package:care_paw/feature/components/image.dart';
import 'package:care_paw/feature/hospitality/detail/hospitality_detail_item_type.dart';
import 'package:care_paw/feature/hospitality/detail/hospitality_detail_viewmodel.dart';
import 'package:care_paw/model/hospitalization.dart';
import 'package:care_paw/model/hospitalization_history_note.dart';
import 'package:care_paw/util/DateTimeUtil.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../model/animal.dart';
import '../../components/sized_spacer.dart';
import 'hospitality_history_note_item.dart';

enum HospitalityDetailFAB {
  memo(Icons.add),
  feeding(null),
  medicine(null),
  cleaning(null),
  nursing(null),
  out(Icons.check);

  final IconData? icon;

  const HospitalityDetailFAB(this.icon);
}

class HospitalityDetailScreen extends ConsumerStatefulWidget {
  const HospitalityDetailScreen({super.key, required this.id});

  final int id;

  @override
  ConsumerState createState() => _HospitalityDetailScreenState();
}

class _HospitalityDetailScreenState
    extends ConsumerState<HospitalityDetailScreen> {
  Widget _buildAnimal(Animal animal, DateTime start, DateTime? end) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 88, height: 88, child: SBImage(url: animal.imgUrl)),
            const SizedSpacer(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(animal.name,
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  Text(
                      '${animal.species.korean} / ${animal.gender.korean} / ${animal.birth.toDateString()}',
                      style: textTheme.bodySmall)
                ],
              ),
            )
          ],
        ),
        const SizedSpacer(
          height: 16,
        ),
        if (animal.note != null && animal.note!.isNotEmpty) ...{
          Text(
            animal.note ?? '',
            style: textTheme.bodyMedium,
          ),
          const SizedSpacer(
            height: 32,
          ),
        },
        Text(
          '입원일: ${start.toDateString()}',
          style: textTheme.bodyMedium,
        ),
        Text(
          '퇴원일: ${end?.toDateString() ?? '미정'}',
          style: textTheme.bodyMedium,
        )
      ],
    );
  }

  Widget _buildFabs() {
    var colors = Theme.of(context).colorScheme;
    var style = FilledButton.styleFrom(
        backgroundColor: colors.secondaryContainer,
        foregroundColor: colors.onSecondaryContainer);

    return ExpandableFab(
      distance: 300,
      children: [
        for (HospitalityDetailFAB fab in HospitalityDetailFAB.values) ...{
          FilledButton(
              onPressed: () {
                // fab 전달
              },
              style: fab != HospitalityDetailFAB.memo ? style : null,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (fab.icon != null) ...{
                    Icon(fab.icon),
                    const SizedSpacer(
                      width: 8,
                    ),
                  },
                  Text(switch (fab) {
                    HospitalityDetailFAB.memo => '메모 추가',
                    HospitalityDetailFAB.nursing => '처치 완료',
                    HospitalityDetailFAB.cleaning => '청소 완료',
                    HospitalityDetailFAB.feeding => '밥 줬음',
                    HospitalityDetailFAB.medicine => '약 먹었음',
                    HospitalityDetailFAB.out => '퇴원',
                  })
                ],
              )),
        }
      ],
    );
  }

  Widget _buildList(List<HospitalityDetailItemType> items) {
    return ListView.separated(
        itemCount: items.length,
        padding:
            const EdgeInsets.only(bottom: 32, top: 28, left: 16, right: 16),
        separatorBuilder: (context, i) => const SizedBox(
              height: 14,
            ),
        itemBuilder: (context, i) => switch (items[i]) {
              HospitalityDetailAnimalItem item =>
                _buildAnimal(item.animal, item.startDate, item.endDate),
              HospitalityDetailHistoryNoteItem item =>
                HospitalityHistoryNoteItem(
                  item: item.note,
                ),
              HospitalityDetailDividerItem() => Container(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: const Divider()),
              HospitalityDetailTitleItem item => Text(item.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold))
            });
  }

  Widget _buildBookmark(AsyncValue<Hospitalization?> hospitalization) {
    return IconButton(
        onPressed: hospitalization.hasValue ? () {} : null,
        icon: switch (hospitalization) {
          AsyncData(:final value) => Icon((value?.isBookmarked ?? false)
              ? Icons.bookmark
              : Icons.bookmark_border),
          _ => const Icon(Icons.bookmark_border)
        });
  }

  @override
  Widget build(BuildContext context) {
    final hospitalization =
        ref.watch(getHospitalizationDetailProvider(id: widget.id));

    final items = switch (hospitalization) {
      AsyncData(:final value) => value == null
          ? null
          : [
              HospitalityDetailAnimalItem(value.animal,
                  value.hospitalizationStartDate, value.hospitalizationEndDate),
              HospitalityDetailDividerItem(),
              HospitalityDetailTitleItem('케어 기록'),
              for (HospitalizationHistoryNote note in value.notes ?? [])
                HospitalityDetailHistoryNoteItem(note)
            ],
      AsyncError() => <HospitalityDetailItemType>[],
      _ => null
    };

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [_buildBookmark(hospitalization)],
        ),
        floatingActionButton: _buildFabs(),
        body: items == null ? Center() : _buildList(items));
  }
}
