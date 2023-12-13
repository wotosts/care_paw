import 'package:care_paw/data/di.dart';
import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/feature/components/text_field.dart';
import 'package:care_paw/feature/hospitality/add/hospitality_add_or_edit_viewmodel.dart';
import 'package:care_paw/util/DateTimeUtil.dart';
import 'package:care_paw/util/EmptyExtensions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../model/animal.dart';

class HospitalityAddOrEditScreen extends ConsumerStatefulWidget {
  const HospitalityAddOrEditScreen({super.key});

  @override
  ConsumerState createState() => _HospitalityAddOrEditScreenState();
}

class _HospitalityAddOrEditScreenState
    extends ConsumerState<HospitalityAddOrEditScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _birthController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _speciesController = TextEditingController();

  Future<DateTime?> selectDate({DateTime? lastDate}) async {
    return await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: lastDate ?? DateTime(3000));
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = ref.read(hospitalityAddOrEditViewModelProvider.notifier);
    var state = ref.watch(hospitalityAddOrEditViewModelProvider);

    _birthController.text = state.birth.toDateString();
    _startDateController.text = state.hospitalizationStartDate.toDateString();
    _endDateController.text = state.hospitalizationEndDate.toDateString();

    var margin = const SizedSpacer(
      height: 22,
    );
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
          child: Stack(children: [
            ListView(
              padding: const EdgeInsets.only(bottom: 16),
              children: [
                Center(
                  child: SizedBox(
                    width: 128,
                    height: 128,
                    child: Card(
                        elevation: 0,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {
                            // todo 사진 선택
                          },
                          child: Icon(
                            Icons.image_outlined,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                        )),
                  ),
                ),
                margin,
                CPTextField(
                  labelText: '이름',
                  controller: _nameController,
                ),
                margin,
                CPTextField(
                  labelText: '분류',
                  icon: Icons.arrow_drop_down,
                  controller: _speciesController,
                ),
                margin,
                Row(children: [
                  DropdownMenu<Gender>(
                    label: const Text('성별'),
                    width: (MediaQuery.of(context).size.width - 32) / 2 - 6,
                    // todo
                    trailingIcon: const Icon(Icons.arrow_drop_down),
                    dropdownMenuEntries: [
                      for (var gender in Gender.values)
                        DropdownMenuEntry(value: gender, label: gender.korean),
                    ],
                    onSelected: (value) {},
                  ),
                  const SizedSpacer(
                    width: 12,
                  ),
                  Expanded(
                      child: CPTextField(
                          labelText: '생일',
                          icon: Icons.calendar_month,
                          readOnly: true,
                          controller: _birthController,
                          onIconPressed: () {
                            selectDate(lastDate: DateTime.now()).then((value) {
                              viewModel.setBirth(value);
                            });
                          })),
                ]),
                margin,
                Row(children: [
                  Expanded(
                      child: CPTextField(
                    labelText: '입원일',
                    icon: Icons.calendar_month,
                    readOnly: true,
                    controller: _startDateController,
                    onIconPressed: () {
                      selectDate().then((value) {
                        viewModel.setHospitalizationStartDate(value);
                      });
                    },
                  )),
                  const SizedSpacer(
                    width: 12,
                  ),
                  Expanded(
                      child: CPTextField(
                    labelText: '퇴원일',
                    icon: Icons.calendar_month,
                    readOnly: true,
                    controller: _endDateController,
                    onIconPressed: () {
                      selectDate().then((value) {
                        viewModel.setHospitalizationEndDate(value);
                      });
                    },
                  )),
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
                padding: const EdgeInsets.only(bottom: 16),
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
