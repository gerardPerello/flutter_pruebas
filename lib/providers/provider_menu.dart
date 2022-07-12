import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class ProviderMenu {
  List<dynamic> getOption = [];

  ProviderMenu() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final value = await rootBundle.loadString('data/json_menu.json');
    Map datos = json.decode(value);
    getOption = datos['rutas'];

    return getOption;
  }
}

final menuProvider = ProviderMenu();
