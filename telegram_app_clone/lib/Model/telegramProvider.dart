import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:telegram_app_clone/Model/telegram.dart';

class TelegramProvider with ChangeNotifier {
  final List<TelegramModel> _userList = [
    TelegramModel(
      name: 'Tariku Birhan',
      imageName: 'Assets/IMG_20210130_174525.jpg',
      description: 'Hello baba!! How you doing?? I\'ll call you soon!',
      date: DateFormat.yMMMd().format(DateTime.now()),
    ),
    TelegramModel(
      name: 'Kalkidan Nigussie',
      imageName: 'Assets/freestocks-8a95EVm0ovQ-unsplash.jpg',
      description:
          'Are u okey Kalichu?? I\'ll come you soon and see you honey!',
      date: DateFormat.yMMMd().format(DateTime.now()),
    ),
    TelegramModel(
      name: 'Yoseph Alamrew',
      imageName: 'Assets/milad-shams-FttBXHp7VZw-unsplash.jpg',
      description:
          'The project get secceded! Thank you for your support jossy!',
      date: DateFormat.yMMMd().format(DateTime.now()),
    ),
  ];
  List<TelegramModel> get userList {
    return [..._userList];
  }
}
