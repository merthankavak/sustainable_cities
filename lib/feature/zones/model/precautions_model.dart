import 'package:flutter/material.dart';

class PrecautionsModel {
  final String title;
  final String desc;

  PrecautionsModel(this.title, this.desc);
}

class PrecautionsModels {
  static final List<PrecautionsModel> precautionModels = [
    PrecautionsModel('Step 1',
        'Secure your belongings. The largest financial loss you can incur during an earthquake will be from falling objects and overturned furniture.'),
    PrecautionsModel('Step 2',
        'Put latches on cabinet doors and file cabinets. During an earthquake doors and drawers can come open. Place strong latches on your cabinets door and file cabinets to keep them from opening and spilling their contents on the floor causing damage.!'),
    PrecautionsModel('Step 3',
        'Fasten your water heater and other appliances. Secure your water heater to wall studs. Anchor your appliances to the wall or floor to prevent them from sliding or falling over.'),
    PrecautionsModel('Step 4',
        'Store hazardous materials in a sturdy place. Mixing or spilling chemicals can be dangerous.'),
    PrecautionsModel('Step 5',
        'Keep fire extinguishers. Place them throughout your home in the event you need them. If a fire starts during an earthquake having a fire extinguisher nearby will help minimize the damage.'),
  ];
}

class StepItems {
  static final List<Step> stepItems =
      PrecautionsModels.precautionModels.map((PrecautionsModel items) {
    return Step(title: Text(items.title), content: Text(items.desc), isActive: true);
  }).toList();
}
