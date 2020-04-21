import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.backspace),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
