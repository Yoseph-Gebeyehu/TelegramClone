import 'package:flutter/cupertino.dart';

class TelegramModel with ChangeNotifier {
  final String name;
  final String imageName;
  final String description;
  final String date;
  final String id;
  final String lastSeen;

  TelegramModel({
    required this.name,
    required this.imageName,
    required this.description,
    required this.date,
    required this.id,
    required this.lastSeen,
  });
}
