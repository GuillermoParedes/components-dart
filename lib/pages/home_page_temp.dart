import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> options = [
    'JavaScript',
    'TypeScript',
    'Angular',
    'Python',
    'NodeJS',
    'Nest'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components Temp'),
      ),
      body: ListView(
        children: _createOptionsMap(), //_createOptions(),
      ),
    );
  }

  // List<Widget> _createOptions() {
  //   List<Widget> list = new List<Widget>();

  //   for (String option in options) {
  //     list.addAll([ListTile(title: Text(option)), Divider()]);
  //   }
  //   return list;
  // }

  List<Widget> _createOptionsMap() {
    return options.map((option) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$option !!'),
            subtitle: Text('Description'),
            leading: Icon(Icons.arrow_forward_ios),
            trailing: Icon(Icons.arrow_forward_ios),
            isThreeLine: true,
            selected: false,
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
