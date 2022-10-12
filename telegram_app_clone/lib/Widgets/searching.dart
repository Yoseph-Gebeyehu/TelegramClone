import 'package:flutter/material.dart';
import 'package:telegram_app_clone/Screen/telegramBody.dart';
import '../Provider/telegramProvider.dart';

class Search extends SearchDelegate<String> {
  final TelegramProvider tgProvider;
  Search(this.tgProvider);
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, '');
          } else {
            query = '';
          }
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon:const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestions = tgProvider.userList.where((element) {
      return element.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (ctx, i) {
        final queryText = suggestions[i].name.substring(0, query.length);
        final remainingText = suggestions[i].name.substring(query.length);
        return ListTile(
          onTap: () {},
          subtitle: Text(suggestions[i].description),
          title: RichText(
            text: TextSpan(
              text: queryText,
              style: TextStyle(
                fontSize: 17,
                color: Theme.of(context).colorScheme.secondary,
              ),
              children: [
                TextSpan(
                  text: remainingText,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: ExactAssetImage(
              suggestions[i].imageName,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = tgProvider.userList.where((element) {
      return element.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (ctx, i) {
        final queryText = suggestions[i].name.substring(0, query.length);
        final remainingText = suggestions[i].name.substring(query.length);
        return ListTile(
          contentPadding:const EdgeInsets.all(0),
          onTap: () {
            Navigator.of(context).pushNamed(TelegramBody.routeName);
          },
          subtitle: Text(suggestions[i].lastSeen),
          title: RichText(
            text: TextSpan(
              text: queryText,
              style: TextStyle(
                fontSize: 17,
                color: Theme.of(context).colorScheme.secondary,
              ),
              children: [
                TextSpan(
                  text: remainingText,
                  style: const TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: ExactAssetImage(
              suggestions[i].imageName,
            ),
          ),
        );
      },
    );
  }
}
