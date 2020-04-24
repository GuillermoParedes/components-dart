import 'package:components/widgets/_card.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        children: <Widget>[
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'normal'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
          SizedBox(
            height: 30,
          ),
          CardWidget(
              title: 'The cards is awesome',
              subtitle: 'I need food now',
              type: 'image'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
