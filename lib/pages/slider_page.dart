import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.backspace),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
