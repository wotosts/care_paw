import 'package:care_paw/feature/components/animal_list_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../route.dart';
import 'home_viewmodel.dart';

class AnimalListPage extends ConsumerStatefulWidget {
  const AnimalListPage({super.key});

  @override
  ConsumerState<AnimalListPage> createState() => _AnimalListPageState();
}

class _AnimalListPageState extends ConsumerState<AnimalListPage> {
  @override
  Widget build(BuildContext context) {
    final list = ref.watch(homeViewModelProvider.select((value) => value.list));
    final user = ref.watch(homeViewModelProvider.select((value) => value.user));

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(RoutePath.addAnimal);
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  "${user?.nickname ?? ''} 님, \n오늘 입원 환자 목록이에요.",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    itemCount: list?.length ?? 0,
                    itemBuilder: (context, i) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: AnimalListItem(item: list![i]));
                    }),
              )
            ],
          )),
    );
  }
}
