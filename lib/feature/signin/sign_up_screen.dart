import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/feature/components/text_field.dart';
import 'package:care_paw/feature/route.dart';
import 'package:care_paw/feature/signin/sign_in_event.dart';
import 'package:care_paw/feature/signin/sign_in_viewmodel.dart';
import 'package:care_paw/model/user.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/hospital.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignUpScreen> {
  bool _showPassword = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _hospitalController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nicknameController.dispose();
    _hospitalController.dispose();
    _occupationController.dispose();

    super.dispose();
  }

  // only once
  void restoreState() {
    var state = ref.read(signInViewModelProvider);
    _emailController.text = state.email;
    _passwordController.text = state.password;
    _hospitalController.text = state.hospital?.name ?? '';
    _nicknameController.text = state.nickname ?? '';
    _occupationController.text = state.occupation ?? '';
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = ref.read(signInViewModelProvider.notifier);
    var hospitals =
        ref.watch(signInViewModelProvider.select((value) => value.hospitals));
    var isSignUpEnabled = ref.watch(
        signInViewModelProvider.select((value) => viewModel.isSignUpEnabled()));

    ref.listen(signInViewModelProvider.select((value) => value.event),
        (_, next) {
      switch (next) {
        case SignUpCompleteEvent():
          context.push(RoutePath.home, clear: true);
          break;
        default:
          break;
      }

      viewModel.clearEvent();
    });

    restoreState();

    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('필수 정보 입력'),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Stack(
              children: [
                ListView(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  children: [
                    const SizedSpacer(
                      height: 26,
                    ),
                    CPTextField(
                      labelText: '이메일',
                      textInputType: TextInputType.emailAddress,
                      controller: _emailController,
                      onChanged: (value) {
                        viewModel.setEmail(value);
                      },
                    ),
                    const SizedSpacer(
                      height: 20,
                    ),
                    CPTextField(
                      labelText: '비밀번호',
                      textInputType: TextInputType.visiblePassword,
                      icon: _showPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      obscureText: !_showPassword,
                      onIconPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      controller: _passwordController,
                      onChanged: (value) {
                        viewModel.setPassword(value);
                      },
                    ),
                    const SizedSpacer(
                      height: 20,
                    ),
                    CPTextField(
                      labelText: '닉네임',
                      controller: _nicknameController,
                      onChanged: (value) {
                        viewModel.setNickname(value);
                      },
                    ),
                    const SizedSpacer(
                      height: 42,
                    ),
                    Text('병원 선택',
                        style: Theme.of(context).textTheme.titleSmall),
                    const SizedSpacer(
                      height: 10,
                    ),
                    DropdownMenu<Hospital>(
                      label: const Text('병원'),
                      width: MediaQuery.of(context).size.width - 32,
                      enableFilter: true,
                      enableSearch: true,
                      requestFocusOnTap: true,
                      trailingIcon: const Icon(Icons.arrow_drop_down),
                      hintText: '병원명 입력',
                      controller: _hospitalController,
                      dropdownMenuEntries: hospitals
                          .map((hospital) => DropdownMenuEntry(
                              value: hospital, label: hospital.name))
                          .toList(),
                      onSelected: (value) {
                        viewModel.setHospital(value!);
                      },
                    ),
                    const SizedSpacer(
                      height: 20,
                    ),
                    DropdownMenu<String>(
                      label: const Text('직무'),
                      width: MediaQuery.of(context).size.width - 32,
                      trailingIcon: const Icon(Icons.arrow_drop_down),
                      hintText: '직무 입력',
                      dropdownMenuEntries: [
                        for (var occupation in Occupation.values)
                          DropdownMenuEntry(
                              value: occupation.korean,
                              label: occupation.korean),
                      ],
                      onSelected: (value) {
                        viewModel.setOccupation(value ?? '');
                      },
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: isSignUpEnabled
                              ? () {
                                  viewModel.signUp();
                                }
                              : null,
                          child: const Text('가입하기'),
                        )))
              ],
            ),
          ),
        ));
  }
}
