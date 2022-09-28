import 'package:flutter/material.dart';
// import 'package:flutter_complete_guide/Telegram/Models/telegram_data.dart';
import 'package:provider/provider.dart';

import '../Model/telegramProvider.dart';

class TelegramBody extends StatelessWidget {
  static const routeName = '/telegram-body';
  // const TelegramBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final peopleId = ModalRoute.of(context)!.settings.arguments as String;
    final peopleList = Provider.of<TelegramProvider>(context).userList;
    final peopleName = peopleList
        .where(
          (element) => element.name == 'Tariku Birhan',
        )
        .toList;
    return Scaffold(
      bottomNavigationBar: GridTileBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.emoji_emotions_outlined),
          color: Colors.grey,
          onPressed: () {},
        ),
        title: const TextField(
          // textAlign: TextAlign.center,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
              labelText: 'Message',
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 25,
              )
              // helperText: 'Message',
              ),
        ),
        trailing: Row(children: [
          IconButton(
            color: Colors.grey,
            onPressed: () {},
            icon: const Icon(
              Icons.record_voice_over,
            ),
          ),
          IconButton(
            color: Colors.grey,
            onPressed: () {},
            icon: const Icon(
              Icons.emergency_recording_outlined,
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: ExactAssetImage(
                  'Assets/Images/roksolana-zasiadko-LyeduBb2Auk-unsplash.jpg'),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tariku Birhan'),
                  Text(
                    'Online',
                    style: TextStyle(
                      fontSize: 13,
                      // color: Colors.blueGrey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Container(color: Colors.greenAccent),
    );
  }
}
