import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/telegramProvider.dart';
import '../Screen/telegramBody.dart';

class TypesOfGroups extends StatelessWidget {
  // const TypesOfGroups({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final people = Provider.of<TelegramProvider>(context).userList;
    return ListView.builder(
      itemBuilder: ((context, index) => Column(
            children: [
              ListTile(
                minVerticalPadding: 0,
                onTap: () {
                  if(people[index].name == 'Tariku Birhan'){
                    Navigator.of(context).pushNamed(TelegramBody.routeName);
                  } 
                },
                contentPadding: const EdgeInsets.only(
                    left: 10, top: 0, right: 0, bottom: 0),
                title: Text(
                  people[index].name,
                  style: const TextStyle(fontSize: 20),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: ExactAssetImage(people[index].imageName),
                ),
                subtitle: Text(people[index].description),
                trailing: Text(people[index].date),
              ),
              Divider(
                color: Colors.black38,
                indent: MediaQuery.of(context).size.width * 0.25,
              )
            ],
          )),
      itemCount: people.length,
    );
  }
}
