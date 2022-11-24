// ignore: file_names
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:telegram_app_clone/Model/telegram.dart';
import 'package:provider/provider.dart';

class TelegramProvider with ChangeNotifier {
  final List<TelegramModel> _userList = [
    TelegramModel(
        name: 'Tariku Birhan',
        imageName: 'Assets/Images/photo_2022-11-09_17-06-07.jpg',
        description: 'Hello baba!! How you doing?? I\'ll call you soon!',
        date: DateFormat.MMMd().format(DateTime.now()),
        id: '1',
        lastSeen: 'last seen recently'),
    TelegramModel(
        name: 'Kalkidan Nigussie',
        imageName: 'Assets/Images/photo_2022-11-09_17-06-25.jpg',
        description:
            'Are u okey Kalichu?? I\'ll come you soon and see you honey!',
        date: DateFormat.MMMd().format(DateTime.now()),
        id: '2',
        lastSeen: 'last seen at 11:4 pm'),
    TelegramModel(
        name: 'Yoseph Alamrew',
        imageName: 'Assets/Images/photo_2022-11-09_17-06-30.jpg',
        description:
            'The project get secceded! Thank you for your support jossy!',
        date: DateFormat.MMMd().format(DateTime.now()),
        id: '3',
        lastSeen: 'last seen with in a month'),
    TelegramModel(
      name: 'Hana Getu',
      imageName: 'Assets/Images/photo_2022-11-09_17-06-34.jpg',
      description:
          'Hello hani!Congradulation we saw your resume and we accept your application.',
      date: DateFormat.MMMd().format(DateTime.now()),
      id: '4',
      lastSeen: 'last seen with in a month',
    ),
    TelegramModel(
      name: 'Samrawit Getachew',
      imageName: 'Assets/Images/photo_2022-11-09_17-06-37.jpg',
      description: 'Samricho my sis. Are you ok!',
      date: DateFormat.MMMd().format(DateTime.now()),
      id: '5',
      lastSeen: 'last seen with in a year',
    ),
    TelegramModel(
      name: 'Fkr Baslael',
      imageName: 'Assets/Images/photo_2022-11-09_17-06-40.jpg',
      description: 'Samricho my sis. Are you ok!',
      date: DateFormat.MMMd().format(DateTime.now()),
      id: '6',
      lastSeen: 'last seen with in a month',
    ),
  ];
  List<TelegramModel> get userList {
    return [..._userList];
  }

  TelegramModel findById(String id) {
    return _userList.firstWhere((people) => people.id == id);
  }

   addFriend(String tgName, String phoneNo) {
    final add = TelegramModel(
      name: tgName,
      imageName: 'imageName',
      description: 'description',
      date: DateTime.now().toString(),
      id: 'id',
      lastSeen: 'lastSeen',
    );
    return _userList.add(add);
    notifyListeners();
  }
}
