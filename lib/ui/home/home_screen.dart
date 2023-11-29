import 'package:care_paw/ui/home/animal_list_page.dart';
import 'package:care_paw/ui/home/my_info_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.list), label: '입원 환자'),
            NavigationDestination(
                icon: Icon(Icons.person_outline), label: '내 정보'),
          ],
          onDestinationSelected: (page) {
            controller.animateToPage(page,
                duration: const Duration(milliseconds: 300), curve: Curves.ease);
          },
        ),
        body: PageView(
          controller: controller,
          children: [AnimalListPage(), MyInfoPage()],
        ));
  }
}
