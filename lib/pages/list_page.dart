import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.backspace),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
