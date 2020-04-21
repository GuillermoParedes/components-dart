import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessible,
  'folder_open': Icons.folder_open,
  'donut': Icons.donut_large,
  'input': Icons.input,
  'tune': Icons.tune,
  'list': Icons.list,
};

Icon getIcon(String name) {
  return Icon(_icons[name], color: Colors.blue);
}
