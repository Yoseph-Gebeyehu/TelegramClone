import 'package:flutter/material.dart';

class CountryName extends StatelessWidget {
  // const CountryName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a country'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(children: [
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Afhanistan'),
          trailing: Text('+93'),
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Australia'),
          trailing: Text('+43'),
        ),
        Divider(
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
          height: 1,
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Belgium'),
          trailing: Text('+32'),
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Brazil'),
          trailing: Text('+55'),
        ),
        Divider(
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
          height: 1,
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Cameroon'),
          trailing: Text('+237'),
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('China'),
          trailing: Text('+86'),
        ),
        Divider(
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
          height: 1,
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Denmark'),
          trailing: Text('+45'),
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Djibouti'),
          trailing: Text('+253'),
        ),
        Divider(
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
          height: 1,
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Egypy'),
          trailing: Text('+20'),
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Eritrea'),
          trailing: Text('+291'),
        ),
        Divider(
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
          height: 1,
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Finland'),
          trailing: Text('+358'),
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('France'),
          trailing: Text('+33'),
        ),
        Divider(
          indent: MediaQuery.of(context).size.width * 0.1,
          endIndent: MediaQuery.of(context).size.width * 0.1,
          height: 1,
        ),
      ]),
    );
  }
}
