import 'package:flutter/material.dart';

import 'Screen/telegram_main.dart';

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
