import 'package:care_paw/ui/components/sized_spacer.dart';
import 'package:flutter/material.dart';

import '../../model/animal.dart';
import '../../model/hospitalization_history.dart';
import '../components/animal_list_item.dart';

class MyInfoPage extends StatefulWidget {
  const MyInfoPage({super.key});

  @override
  State<MyInfoPage> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends State<MyInfoPage> {
  Widget _profile() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 56,
                height: 56,
                child: Placeholder(color: Colors.blueGrey)),
            SizedSpacer(width: 16,),
            Column(
              children: [
                Text('닉네임'),
                Text('직책')
              ],
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedSpacer(height: 20),
              _profile(),
              Text('즐겨찾기 환자'),
              Expanded(
                child: ListView(
                  children: [
                    AnimalListItem(
                        item: HospitalizationHistory(
                            animal: Animal(
                                name: '먼지',
                                species: '개',
                                birth: DateTime.parse('2016-08-10'),
                                gender: '중성화',
                                note:
                                    '침많이흘림 질질질질 침많이흘림 질질질질 침많이흘림 질질질질 침많이흘림 질질질질 침많이흘림 질질질질 침많이흘림 질질질질 침많이흘림 질질질질'),
                            isBookmarked: false,
                            hospitalizationStartDate:
                                DateTime.parse('2023-11-27'),
                            hospitalizationEndDate:
                                DateTime.parse('2023-12-15')))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
