import 'package:flutter/material.dart';

class AnimalListPage extends StatefulWidget {
  const AnimalListPage({super.key});

  @override
  State<AnimalListPage> createState() => _AnimalListPageState();
}

class _AnimalListPageState extends State<AnimalListPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Vet 님, \n오늘 입원 환자 목록이에요."),
        ListView(
          children: [],
        )
      ],
    );
  }
}
