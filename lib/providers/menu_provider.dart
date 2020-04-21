import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {}

  Future<List<dynamic>> loadData() async {
    final res = await rootBundle.loadString('data/menu_opts.json');
    Map resMap = json.decode(res);
    options = resMap['routes'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
