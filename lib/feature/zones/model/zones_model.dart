import 'package:flutter/material.dart';

class ZoneModel {
  final String name;
  final String desc;

  ZoneModel(this.name, this.desc);

  Color get colorsWithName => desc.contains('1') ? Colors.red : Colors.redAccent;
}

class ZoneModels {
  static final List<ZoneModel> zoneModels = [
    ZoneModel('ADANA', 'ADANA: 2nd, 3rd and 4th degree earthquake zone'),
    ZoneModel('ANKARA', 'ANKARA: 3rd, 4th degree earthquake zone'),
    ZoneModel('ANTALYA', 'ANTALYA: 2nd, 3rd degree earthquake zone'),
    ZoneModel('BURSA', "BURSA: 1th degree earthquake zone"),
    ZoneModel('ERZİNCAN', "ERZİNCAN: 1th degree earthquake zone"),
    ZoneModel('İSTANBUL', "İSTANBUL: 1th, 2nd and 3rd degree earthquake zone"),
    ZoneModel('İZMİR', "İZMİR: 1th degree earthquake zone"),
    ZoneModel('KONYA', "KONYA: 3rd, 4th and 5th degree earthquake zone"),
  ];
}

class DropDownItems {
  static final List<DropdownMenuItem<String>> dropdownMenuItems =
      ZoneModels.zoneModels.map((ZoneModel items) {
    return DropdownMenuItem<String>(
      value: items.name,
      child: Text(items.name),
    );
  }).toList();
}
