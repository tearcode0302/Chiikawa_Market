import 'package:flutter/material.dart';
import 'package:chiikawamarketapp/main.dart';

class ChiikawaMarket extends StatelessWidget {
  const ChiikawaMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: ClipOval(
        //   child: Image.asset('assets/images/chiikawa.jpg'),
        // ),
        child: Text(
          count.toString(),
          style: const TextStyle(
            fontSize: 80,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          count++;
        },
      ),
    );
  }
}
