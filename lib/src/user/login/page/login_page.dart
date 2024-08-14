import 'package:flutter/material.dart';

import '../../../common/app_font.dart';
import '../../../common/components/btn.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget _logoView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 99,
          height: 116,
          child: Image.asset(
            'assets/images/chiikawa.png',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const AppFont(
          '치이카와 마켓',
          fontWeight: FontWeight.bold,
          size: 20,
        ),
        const SizedBox(
          height: 15,
        ),
        AppFont(
          '먼작귀 캐릭터 제품은 치이카와 마켓에서, \n지금 내 동네를 선택하고 시작해보세요!',
          align: TextAlign.center,
          size: 18,
          color: Colors.white.withOpacity(0.6),
        ),
      ],
    );
  }

  Widget _textDiver() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
            child: AppFont(
              '회원 가입/로그인',
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _snsLoginBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        children: [
          Btn(
            color: Colors.white,
            onTap: () {},
            child: Row(
              children: [
                Image.asset('assets/images/google.png'),
                const SizedBox(width: 30),
                const AppFont(
                  'Google로 계속하기',
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Btn(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            onTap: () {},
            child: Row(
              children: [
                Image.asset('assets/images/apple.png'),
                const SizedBox(width: 17),
                const AppFont(
                  'Apple로 계속하기',
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _logoView(),
          _textDiver(),
          _snsLoginBtn(),
        ],
      ),
    );
  }
}
