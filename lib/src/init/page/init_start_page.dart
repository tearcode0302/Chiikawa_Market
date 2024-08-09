import 'package:chiikawamarketapp/src/common/app_font.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InitStartPage extends StatelessWidget {
  const InitStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 99,
              height: 116,
              child: Image.asset('assets/images/chiikawa.jpg'),
            ),
            const SizedBox(height: 40,),
            AppFont(
              '치이카와 마켓',
              fontWeight: FontWeight.bold,
              size: 20,
            ),
            const SizedBox(height: 15,),
            AppFont(
              '먼작귀 캐릭터들과 함게, \n 지금 내 동네를 선택하고 시작해보세요!',
              align: TextAlign.center,
              size: 18,
              color: Colors.white.withOpacity(0.6),
            )
          ],
        ),
      ),
    );
  }
}
