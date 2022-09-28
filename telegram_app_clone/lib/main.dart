import 'package:flutter/material.dart';

import 'Screen/telegram_main.dart';

void main() {
  runApp(const TelegramHome());
}

class TelegramHome extends StatelessWidget {
  const TelegramHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelegramMain(),
    );
  }
}
