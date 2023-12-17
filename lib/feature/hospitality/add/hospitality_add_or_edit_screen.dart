import 'package:care_paw/feature/components/pickable_image.dart';
import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/feature/components/text_field.dart';
import 'package:care_paw/feature/hospitality/add/hospitality_add_or_edit_state.dart';
import 'package:care_paw/feature/hospitality/add/hospitality_add_or_edit_viewmodel.dart';
import 'package:care_paw/util/DateTimeUtil.dart';
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
  final TextEditingController _genderController = TextEditingController();

  Future<DateTime?> selectDate({DateTime? lastDate}) async {
    return await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: lastDate ?? DateTime(3000));
  }

  bool _isButtonEnabled(HospitalityAddOrEditState state) {
    return state.species != null &&
        state.image != null &&
        state.animalName?.isNotEmpty == true &&
        state.hospitalizationStartDate != null &&
        state.birth != null &&
        state.gender != null;
  }

  @override
  void dispose() {
    _birthController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();

    super.dispose();
  }

  dynamic watchProvider(Function(HospitalityAddOrEditState) select) =>
      ref.watch(hospitalityAddOrEditViewModelProvider.select(select));

  @override
  Widget build(BuildContext context) {
    var viewModel = ref.read(hospitalityAddOrEditViewModelProvider.notifier);

    _birthController.text =
        watchProvider((value) => value.birth.toDateString());
    _startDateController.text =
        watchProvider((value) => value.hospitalizationStartDate.toDateString());
    _endDateController.text =
        watchProvider((value) => value.hospitalizationEndDate.toDateString());

    var margin = const SizedSpacer(
      height: 22,
    );

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Stack(children: [
            ListView(
              padding: const EdgeInsets.only(top: 28, bottom: 16),
              children: [
                Center(child: PickableImage(
                  onPicked: (image) {
                    viewModel.setImage(image);
                  },
                )),
                margin,
                CPTextField(
                  labelText: '환자 이름',
                  controller: _nameController,
                  onChanged: (value) {
                    viewModel.setAnimalName(value);
                  },
                ),
                margin,
                DropdownMenu<Species>(
                  label: const Text('분류'),
                  width: MediaQuery.of(context).size.width - 32,
                  trailingIcon: const Icon(Icons.arrow_drop_down),
                  controller: _speciesController,
                  dropdownMenuEntries: [
                    for (var species in Species.values)
                      DropdownMenuEntry(value: species, label: species.korean),
                  ],
                  onSelected: (value) {
                    viewModel.setSpecies(value);
                  },
                ),
                margin,
                Row(children: [
                  DropdownMenu<Gender>(
                    label: const Text('성별'),
                    // todo size
                    width: (MediaQuery.of(context).size.width - 32) / 2 - 6,
                    trailingIcon: const Icon(Icons.arrow_drop_down),
                    controller: _genderController,
                    dropdownMenuEntries: [
                      for (var gender in Gender.values)
                        DropdownMenuEntry(value: gender, label: gender.korean),
                    ],
                    onSelected: (value) {
                      viewModel.setGender(value);
                    },
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
                          onTap: () {
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
                    onTap: () {
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
                    onTap: () {
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
                  onChanged: (value) {
                    viewModel.setNote(value);
                  },
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
                      onPressed: _isButtonEnabled(
                              ref.watch(hospitalityAddOrEditViewModelProvider))
                          ? () {
                              viewModel.createHospitalization();
                            }
                          : null,
                      child: Text('저장하기'),
                    )))
          ]),
        ));
  }
}
