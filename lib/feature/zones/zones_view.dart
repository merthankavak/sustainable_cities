import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kartal/kartal.dart';

import '../../product/enum/navigation_enum.dart';
import '../../product/padding/page_padding.dart';
import '../../product/widget/zone_card.dart';
import 'model/zones_model.dart';

class ZonesView extends StatefulWidget {
  const ZonesView({Key? key}) : super(key: key);

  @override
  State<ZonesView> createState() => _ZonesViewState();
}

class _ZonesViewState extends State<ZonesView> {
  final String _appBarTittle = 'Earthquake Zones';
  final String _textButtonTitle = 'Precautions';
  String _dropDownValue = 'ADANA';

  int _indexOfZone = 0;

  void _changeValue([String? value]) {
    setState(() {
      if (value != null) {
        _dropDownValue = value;
        for (var i = 0; i < ZoneModels.zoneModels.length; i++) {
          _dropDownValue == ZoneModels.zoneModels[i].name ? _indexOfZone = i : 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Padding(
          padding: const PagePadding.all(),
          child: Column(
            children: [
              buildDropDownButton(),
              context.emptySizedHeightBoxNormal,
              ZoneCard(model: ZoneModels.zoneModels[_indexOfZone]),
              context.emptySizedHeightBoxNormal,
              TextButton(
                  onPressed: () => context.go(NavigationEnum.PRECAUTIONS_VIEW.rawValue),
                  child: Text(_textButtonTitle))
            ],
          ),
        ));
  }

  DropdownButton<String> buildDropDownButton() {
    return DropdownButton(
      items: DropDownItems.dropdownMenuItems,
      value: _dropDownValue,
      onChanged: (String? value) {
        _changeValue(value);
      },
    );
  }

  AppBar buildAppBar() => AppBar(
      title: Text(_appBarTittle),
      leading: IconButton(
          onPressed: () => context.go(NavigationEnum.HOME_VIEW.rawValue),
          icon: const Icon(Icons.arrow_back)));
}
