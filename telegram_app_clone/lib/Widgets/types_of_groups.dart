import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/telegram.dart';
import '../Provider/telegramProvider.dart';
import '../Screen/telegramBody.dart';

class TypesOfGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final people = Provider.of<TelegramProvider>(context).userList;
    final peopleModel = Provider.of<TelegramModel>(context);
    return ListView.builder(
      
      itemBuilder: ((context, index) => Column(
            children: [
              ListTile(
                // minVerticalPadding: 0,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    TelegramBody.routeName,
                  );
                },
                contentPadding: const EdgeInsets.only(
                    left: 0, top: 0, right: 0, bottom: 0),
                title: Text(
                  people[index].name,
                  style: const TextStyle(fontSize: 18,fontFamily: 'QuickSand'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: ExactAssetImage(people[index].imageName),
                ),
                subtitle: Text(
                  people[index].description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(people[index].date),
                ),
              ),
              Divider(
                height: 1,
                color: Colors.black38,
                indent: MediaQuery.of(context).size.width * 0.25,
              )
            ],
          )),
      itemCount: people.length,
    );
  }
}
