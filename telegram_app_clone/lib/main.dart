import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_app_clone/Provider/auth_provider.dart';
import 'package:telegram_app_clone/Model/telegram.dart';
import 'package:telegram_app_clone/Screen/add_a_friend.dart';
import 'package:telegram_app_clone/Screen/auth_screen.dart';

import 'Provider/telegramProvider.dart';
import 'Screen/editng_screen.dart';
import 'Screen/telegramBody.dart';
import 'Screen/telegram_main.dart';

void main() {
  runApp( TelegramHome());
}

class TelegramHome extends StatelessWidget {
  // const TelegramHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: AuthProvider(),
        ),
        ChangeNotifierProvider.value(
          value: TelegramProvider(),
        ),
        ChangeNotifierProvider.value(
          value: TelegramModel(
            date: '',
            description: '',
            id: '',
            imageName: '',
            name: '',
            lastSeen: '',
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 12),
            ),
            iconTheme: const IconThemeData(size: 23)),
        home:  AuthenticationScreen(),
        routes: {
          TelegramBody.routeName: (context) => TelegramBody(),
          EditingScreen.routeName: (context) =>  EditingScreen(),
          AddFriendScreen.routeName: (context) => AddFriendScreen(),
          TelegramMain.routeName: (context) => TelegramMain(),
        },
      ),
    );
  }
}
