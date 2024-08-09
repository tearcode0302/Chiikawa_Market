import 'package:chiikawamarketapp/chiikawa_market.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int count = 0;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: '치이카와 마켓',
      initialRoute: '/',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Color(0xff212123),
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xff212123)
      ),
      home: ChiikawaMarket(),
      getPages: [
        GetPage(name: '/', page: () => const ChiikawaMarket()),
      ],
    ),
  );
}
