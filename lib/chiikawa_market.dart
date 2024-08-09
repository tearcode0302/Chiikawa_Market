import 'package:flutter/material.dart';
import 'package:chiikawamarketapp/main.dart';

class ChiikawaMarket extends StatefulWidget {
  const ChiikawaMarket({super.key});

  @override
  State<ChiikawaMarket> createState() => _ChiikawaMarketState();
}

class _ChiikawaMarketState extends State<ChiikawaMarket> {
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
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
