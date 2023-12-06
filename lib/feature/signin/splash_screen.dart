import 'package:care_paw/feature/components/sized_spacer.dart';
import 'package:care_paw/feature/components/text_field.dart';
import 'package:care_paw/feature/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool _showLoginForm = false;
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    _checkIsLogIn();
  }

  void _checkIsLogIn() {
    var isLogin = false;

    Future.delayed(const Duration(seconds: 2), () {
      if (isLogin) {
        context.push(RoutePath.home, popItself: true);
      } else {
        setState(() {
          _showLoginForm = true;
        });
      }
    });
  }

  Widget _buildLogin() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedSpacer(
            height: 160,
          ),
          CPTextField(
            labelText: '이메일',
            textInputType: TextInputType.emailAddress,
          ),
          SizedSpacer(
            height: 20,
          ),
          CPTextField(
            labelText: '비밀번호',
            textInputType: TextInputType.visiblePassword,
            icon: _showPassword
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            obscureText: _showPassword,
            onIconPressed: () {
              setState(() {
                _showPassword = !_showPassword;
              });
            },
          ),
          SizedSpacer(
            height: 24,
          ),
          SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  context.push(RoutePath.signUp);
                },
                child: Text('로그인 / 회원가입'),
              )),
          SizedSpacer(
            height: 7,
          ),
          Row(
            children: [
              Flexible(child: Divider()),
              Text(
                ' Or ',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Flexible(child: Divider())
            ],
          ),
          SizedSpacer(
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('CarePaw', style: Theme.of(context).textTheme.displaySmall),
            if (_showLoginForm) _buildLogin()
          ],
        ),
      ),
    );
  }
}
