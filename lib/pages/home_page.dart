import 'package:components/providers/menu_provider.dart';
import 'package:components/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _listOptions(),
    );
  }

  Widget _listOptions() {
    menuProvider.loadData().then((res) {
      print(res);
    });

    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          print('SnapshotData:: ${snapshot.data}');
          return ListView(
            children: _generateOptions(snapshot?.data, context),
          );
        });
  }

  List<Widget> _generateOptions(List<dynamic> options, BuildContext context) {
    return options.map((option) {
      print('The option is:: ${option}');
      return ListTile(
        title: Text(option['title']),
        leading: getIcon(option['icon']),
        trailing: Icon(Icons.arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.of(context).pushNamed(
            '/${option['route']}',
            arguments: 'Hello there from the first page!',
          );
        },
      );
    }).toList();
    //  ListTile(title: Text('List 1')),
  }
}
