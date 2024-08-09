import 'package:chiikawamarketapp/chiikawa_market.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: '치이카와 마켓',
      initialRoute: '/',
      home: ChiikawaMarket(),
      getPages: [
        GetPage(name: '/', page: () => const ChiikawaMarket()),
      ],
    ),
  );
}
