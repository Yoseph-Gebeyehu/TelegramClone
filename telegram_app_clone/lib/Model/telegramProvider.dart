import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:telegram_app_clone/Model/telegram.dart';
import 'package:provider/provider.dart';

class TelegramProvider with ChangeNotifier {
  final List<TelegramModel> _userList = [
    TelegramModel(
      name: 'Tariku Birhan',
      imageName: 'Assets/Images/roksolana-zasiadko-LyeduBb2Auk-unsplash.jpg',
      description: 'Hello baba!! How you doing?? I\'ll call you soon!',
      date: DateFormat.MMMd().format(DateTime.now()),
      id: '1',
      lastSeen: 'last seen recently'
    ),
    TelegramModel(
      name: 'Kalkidan Nigussie',
      imageName: 'Assets/Images/freestocks-8a95EVm0ovQ-unsplash.jpg',
      description:
          'Are u okey Kalichu?? I\'ll come you soon and see you honey!',
      date: DateFormat.MMMd().format(DateTime.now()),
      id: '2',
      lastSeen: 'last seen at 11:4 pm'
    ),
    TelegramModel(
      name: 'Yoseph Alamrew',
      imageName: 'Assets/Images/milad-shams-FttBXHp7VZw-unsplash.jpg',
      description:
          'The project get secceded! Thank you for your support jossy!',
      date: DateFormat.MMMd().format(DateTime.now()),
      id: '3',
      lastSeen: 'last seen with in a month'
    ),
  ];
  List<TelegramModel> get userList {
    return [..._userList];
  }

  TelegramModel findById(String id) {
    return _userList.firstWhere((people) => people.id == id);
  }
}
