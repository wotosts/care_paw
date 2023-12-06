import 'package:care_paw/feature/components/expandable_fab.dart';
import 'package:care_paw/feature/hospitality/detail/hospitality_detail_item_type.dart';
import 'package:care_paw/model/hospitalization.dart';
import 'package:care_paw/model/hospitalization_history_note.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../model/animal.dart';
import '../../../model/user.dart';
import '../../components/sized_spacer.dart';
import 'hospitality_history_note_item.dart';

class HospitalityDetailScreen extends ConsumerStatefulWidget {
  const HospitalityDetailScreen({super.key, required this.animalId});

  final int animalId;

  @override
  ConsumerState createState() => _HospitalityDetailScreenState();
}

class _HospitalityDetailScreenState
    extends ConsumerState<HospitalityDetailScreen> {
  Widget _buildBottomSheet(ScrollController controller) {
    var colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28), topRight: Radius.circular(28)),
      child: SingleChildScrollView(
        controller: controller,
        child: Container(
          color: const Color(0xFFFDF1F2),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: 32,
                  height: 4,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    child: Container(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ),
              ),
              const SizedSpacer(
                height: 20,
              ),
              Wrap(
                spacing: 8,
                children: [
                  FilledButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add),
                          SizedSpacer(
                            width: 8,
                          ),
                          Text('메모 추가')
                        ],
                      )),
                  FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: colors.secondaryContainer,
                          foregroundColor: colors.onSecondaryContainer),
                      child: const Text('밥 줬음')),
                  FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: colors.secondaryContainer,
                          foregroundColor: colors.onSecondaryContainer),
                      child: const Text('처치 완료')),
                  FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: colors.secondaryContainer,
                          foregroundColor: colors.onSecondaryContainer),
                      child: const Text('청소 완료')),
                  FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: colors.secondaryContainer,
                          foregroundColor: colors.onSecondaryContainer),
                      child: const Text('약 먹었음')),
                  FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: colors.secondaryContainer,
                          foregroundColor: colors.onSecondaryContainer),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.check),
                          SizedSpacer(
                            width: 8,
                          ),
                          Text('퇴원')
                        ],
                      )),
                ],
              ),
              SizedSpacer(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimal(Animal animal, DateTime start, DateTime? end) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedSpacer(
          height: 28,
        ),
        Row(
          children: [
            SizedBox(width: 88, height: 88, child: Placeholder()),
            const SizedSpacer(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(animal.name,
                    style: textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold)),
                Text('${animal.species} / ${animal.gender} / ${animal.birth}',
                    style: textTheme.bodySmall)
              ],
            )
          ],
        ),
        const SizedSpacer(
          height: 16,
        ),
        if (animal != null)
          Text(
            animal.note ?? '',
            style: textTheme.bodyMedium,
          ),
        const SizedSpacer(
          height: 32,
        ),
        Text(
          '입원일: $start',
          style: textTheme.bodyMedium,
        ),
        Text(
          '퇴원일: $end',
          style: textTheme.bodyMedium,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var animal = Animal(
        id: 0,
        name: '먼지',
        species: '개',
        birth: DateTime.parse('2016-08-10'),
        gender: '중성화',
        note: '침많이흘림 질질질질');
    var hospitalization = Hospitalization(
        id: 0,
        animal: animal,
        isBookmarked: false,
        hospitalizationStartDate: DateTime.parse('2023-11-27'),
        hospitalizationEndDate: DateTime.parse('2023-12-15'));
    var items = <HospitalityDetailItemType>[
      HospitalityDetailAnimalItem(
          animal,
          hospitalization.hospitalizationStartDate,
          hospitalization.hospitalizationEndDate),
      HospitalityDetailDividerItem(),
      HospitalityDetailTitleItem('케어 타임라인'),
      HospitalityDetailHistoryNoteItem(HospitalizationHistoryNote(
          id: 0,
          added: DateTime.now(),
          title: '밥 줬음',
          user: User(
            nickname: '먼지쌤',
            email: '',
            occupation: '',
          ))),
      HospitalityDetailHistoryNoteItem(HospitalizationHistoryNote(
          id: 0,
          added: DateTime.now(),
          title: '밥 줬음',
          user: User(
            nickname: '먼지쌤',
            email: '',
            occupation: '',
          ))),
      HospitalityDetailHistoryNoteItem(HospitalizationHistoryNote(
          id: 0,
          added: DateTime.now(),
          title: '메모 메모',
          description: '밥을 왜 저렇게 먹는거야',
          imgUrls: ['url1', 'url2', 'url3', 'url4', 'url5', 'url6', 'url7'],
          user: User(
            nickname: '먼지쌤',
            email: '',
            occupation: '',
          ))),
      HospitalityDetailHistoryNoteItem(HospitalizationHistoryNote(
          id: 0,
          added: DateTime.now(),
          title: '청소 완료',
          user: User(
            nickname: '먼지쌤',
            email: '',
            occupation: '',
          ))),
      HospitalityDetailHistoryNoteItem(HospitalizationHistoryNote(
          id: 0,
          added: DateTime.now(),
          title: '밥 줬음',
          user: User(
            nickname: '먼지쌤',
            email: '',
            occupation: '',
          )))
    ];
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(hospitalization.isBookmarked
                  ? Icons.bookmark
                  : Icons.bookmark_border))
        ],
      ),
      floatingActionButton: ExpandableFab(
        distance: 300,
        children: [
          FilledButton(
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedSpacer(
                    width: 8,
                  ),
                  Text('메모 추가')
                ],
              )),
          FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  backgroundColor: colors.secondaryContainer,
                  foregroundColor: colors.onSecondaryContainer),
              child: const Text('밥 줬음')),
          FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  backgroundColor: colors.secondaryContainer,
                  foregroundColor: colors.onSecondaryContainer),
              child: const Text('처치 완료')),
          FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  backgroundColor: colors.secondaryContainer,
                  foregroundColor: colors.onSecondaryContainer),
              child: const Text('청소 완료')),
          FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  backgroundColor: colors.secondaryContainer,
                  foregroundColor: colors.onSecondaryContainer),
              child: const Text('약 먹었음')),
          FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  backgroundColor: colors.secondaryContainer,
                  foregroundColor: colors.onSecondaryContainer),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.check),
                  SizedSpacer(
                    width: 8,
                  ),
                  Text('퇴원')
                ],
              )),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView.separated(
            itemCount: items.length,
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
                          ?.copyWith(fontWeight: FontWeight.bold)),
                }),
      ),
    );
  }
}
