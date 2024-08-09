import 'package:flutter/material.dart';

class ChiikawaMarket extends StatelessWidget {
  const ChiikawaMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
          child: Image.asset('assets/images/chiikawa.jpg'),
        ),
      ),
    );
  }
}
