import 'package:flutter/material.dart';
import 'package:sustainable_cities/Components/customScaffold.dart';

class EarthQuakePrevent extends StatefulWidget {
  static const String routeName = '/earthquakePrevent';
  @override
  _EarthQuakePreventState createState() => _EarthQuakePreventState();
}

class _EarthQuakePreventState extends State<EarthQuakePrevent> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isBack: true,
      title: "HOW TO PREVENT?",
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Stepper(
          currentStep: this.currentStep,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              currentStep = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (currentStep < steps.length - 1) {
                currentStep = currentStep + 1;
                if (currentStep == 4) {
                  Navigator.popAndPushNamed(context, "/landingPage");
                }
              } else {
                currentStep = 0;
              }
            });
          },
        ),
      ),
    );
  }
  // Step Counter

  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Text(
          'Secure your belongings. The largest financial loss you can incur during an earthquake will be from falling objects and overturned furniture. '),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text(
          "Put latches on cabinet doors and file cabinets. During an earthquake doors and drawers can come open. Place strong latches on your cabinet's door and file cabinets to keep them from opening and spilling their contents on the floor causing damage.!"),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text(
          'Fasten your water heater and other appliances. Secure your water heater to wall studs. Anchor your appliances to the wall or floor to prevent them from sliding or falling over. Make sure that any a!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 4'),
      content: Text(
          "Store hazardous materials in a sturdy place. Mixing or spilling chemicals can be dangerous. Make sure that any hazardous"),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Step 5'),
      content: Text(
          "Keep fire extinguishers. Place them throughout your home in the event you need them. If a fire starts during an earthquake having a fire extinguisher nearby will help minimize the damage."),
      state: StepState.complete,
      isActive: true,
    ),
  ];
}
