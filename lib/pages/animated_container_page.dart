import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Page'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.backspace),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
