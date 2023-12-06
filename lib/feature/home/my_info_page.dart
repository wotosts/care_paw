import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/feature/home/home_viewmodel.dart';
import 'package:care_paw/feature/route.dart';
import 'package:care_paw/util/EmptyExtensions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/animal.dart';
import '../../model/hospitalization.dart';
import '../../model/user.dart';
import '../components/animal_list_item.dart';

class MyInfoPage extends ConsumerStatefulWidget {
  const MyInfoPage({super.key});

  @override
  ConsumerState<MyInfoPage> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends ConsumerState<MyInfoPage> {
  Widget _profile(User user) {
    var textTheme = Theme
        .of(context)
        .textTheme;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 56,
                height: 56,
                child: Placeholder(color: Colors.blueGrey)),
            const SizedSpacer(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.nickname,
                    style: textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold)),
                Text(user.occupation, style: textTheme.labelLarge)
              ],
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final list = ref.watch(homeViewModelProvider.select((value) => value.list));
    final user = ref.watch(homeViewModelProvider.select((value) => value.user));

    final bookmarked = list?.where((element) => element.isBookmarked == true);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedSpacer(height: 20),
              if (user != null) _profile(user),
              const SizedSpacer(height: 20),
              const Text('즐겨찾기 환자'),
              Expanded(
                child: (bookmarked == null || bookmarked!.isEmpty)
                    ? const Center(child: Text('즐겨찾기가 없어요.'))
                    : ListView(
                  children: [
                    for (Hospitalization item in bookmarked)
                      Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 5),
                          child: AnimalListItem(item: item, onClick: () {
                      context.push(RoutePath.hospitalizationDetail, arguments: item.id);
                      }))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
