import 'package:care_paw/feature/home/animal_list_page.dart';
import 'package:care_paw/feature/home/my_info_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_viewmodel.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final PageController controller = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.read(homeViewModelProvider);

    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.list), label: '입원 환자'),
            NavigationDestination(
                icon: Icon(Icons.person_outline), label: '내 정보'),
          ],
          onDestinationSelected: (page) {
            controller.animateToPage(page,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          },
          selectedIndex: _currentPage,
        ),
        body: SafeArea(
            child: PageView(
          controller: controller,
          children: const [AnimalListPage(), MyInfoPage()],
          onPageChanged: (page) {
            setState(() {
              _currentPage = page;
            });
          },
        )));
  }
}
