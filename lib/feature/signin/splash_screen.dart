import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/feature/components/text_field.dart';
import 'package:care_paw/feature/route.dart';
import 'package:care_paw/feature/signin/sign_in_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'sign_in_event.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool _showPassword = false;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<bool> _checkIsSignedIn() async {
    var isLogin = ref.read(signInViewModelProvider.notifier).isSignedIn();

    await Future.delayed(const Duration(seconds: 1), () {
      if (isLogin) {
        context.push(RoutePath.home, popItself: true);
      }
    });

    return isLogin;
  }

  Widget _buildSignIn() {
    var state = ref.watch(signInViewModelProvider);
    var viewModel = ref.read(signInViewModelProvider.notifier);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedSpacer(
            height: 160,
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
            height: 24,
          ),
          SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  viewModel.signIn();
                },
                child: const Text('로그인 / 회원가입'),
              )),
          const SizedSpacer(
            height: 7,
          ),
          Row(
            children: [
              const Flexible(child: Divider()),
              Text(
                ' Or ',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const Flexible(child: Divider())
            ],
          ),
          const SizedSpacer(
            height: 20,
          ),
          SizedBox(
            width: 40,
            height: 40,
            child: SvgPicture.asset('assets/images/google_auth.svg'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(signInViewModelProvider.select((value) => value.event), (_, next) {
      switch (next) {
        case null:
          break;
        case SignInRequireSignUpEvent():
          context.push(RoutePath.signUp);
          break;
        case SignInCompleteEvent():
          context.push(RoutePath.home);
          break;
      }
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('CarePaw', style: Theme.of(context).textTheme.displaySmall),
            FutureBuilder(
                future: _checkIsSignedIn(),
                builder: (context, snapshot) {
                  if (snapshot.hasData == false) {
                    return const CircularProgressIndicator();
                  }

                  if (snapshot.data == true) {
                    return const SizedBox();
                  } else {
                    return _buildSignIn();
                  }
                })
          ],
        ),
      ),
    );
  }
}
