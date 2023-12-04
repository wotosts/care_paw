import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/feature/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HospitalityAddOrEditScreen extends ConsumerStatefulWidget {
  const HospitalityAddOrEditScreen({super.key});

  @override
  ConsumerState createState() => _HospitalityAddOrEditScreenState();
}

class _HospitalityAddOrEditScreenState
    extends ConsumerState<HospitalityAddOrEditScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var margin = const SizedSpacer(
      height: 22,
    );
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Container(
          padding:
              const EdgeInsets.only(top: 28, left: 16, right: 16, bottom: 16),
          child: Stack(children: [
            ListView(
              children: [
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Icon(Icons.ac_unit),
                ),
                margin,
                CPTextField(
                  labelText: '이름',
                  controller: _nameController,
                ),
                margin,
                CPTextField(labelText: '분류', icon: Icons.arrow_drop_down),
                margin,
                CPTextField(labelText: '성별', icon: Icons.arrow_drop_down),
                margin,
                Row(children: [
                  Expanded(
                      child: CPTextField(
                          labelText: '생일', icon: Icons.calendar_month)),
                  SizedSpacer(
                    width: 12,
                  ),
                  Expanded(child: Text('7살~'))
                ]),
                margin,
                Row(children: [
                  Expanded(
                      child: CPTextField(
                          labelText: '입원일', icon: Icons.calendar_month)),
                  SizedSpacer(
                    width: 12,
                  ),
                  Expanded(
                      child: CPTextField(
                          labelText: '퇴원일', icon: Icons.calendar_month)),
                ]),
                margin,
                CPTextField(
                  labelText: '특이사항',
                  controller: _noteController,
                  singleLine: false,
                ),
                const SizedSpacer(
                  height: 80,
                ),
              ],
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {},
                      child: Text('저장하기'),
                    )))
          ]),
        ));
  }
}
