import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/feature/components/text_field.dart';
import 'package:care_paw/feature/route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('필수 정보 입력'),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedSpacer(
                    height: 26,
                  ),
                  CPTextField(
                    labelText: '이메일',
                    enabled: false,
                  ),
                  const SizedSpacer(
                    height: 19,
                  ),
                  CPTextField(labelText: '닉네임'),
                  const SizedSpacer(
                    height: 42,
                  ),
                  Text('병원 선택', style: Theme.of(context).textTheme.titleSmall),
                  const SizedSpacer(
                    height: 10,
                  ),
                  CPTextField(
                    labelText: '병원',
                    icon: Icons.arrow_drop_down,
                    hintText: '병원명 입력',
                  )
                ],
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {
                          context.push(RoutePath.home);
                        },
                        child: Text('저장하기'),
                      )))
            ],
          ),
        ));
  }
}
