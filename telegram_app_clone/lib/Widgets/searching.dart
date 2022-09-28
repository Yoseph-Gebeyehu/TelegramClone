import 'package:flutter/material.dart';
import '../Model/telegramProvider.dart';

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
      icon: Icon(Icons.arrow_back),
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
                color: Theme.of(context).accentColor,
              ),
              children: [
                TextSpan(
                  text: remainingText,
                  style: TextStyle(
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
          onTap: () {},
          subtitle: Text(suggestions[i].description),
          title: RichText(
            text: TextSpan(
              text: queryText,
              style: TextStyle(
                fontSize: 17,
                color: Theme.of(context).accentColor,
              ),
              children: [
                TextSpan(
                  text: remainingText,
                  style: TextStyle(
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
}
