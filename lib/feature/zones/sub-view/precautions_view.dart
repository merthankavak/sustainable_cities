import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../product/enum/navigation_enum.dart';
import '../model/precautions_model.dart';

class PrecautionsView extends StatefulWidget {
  const PrecautionsView({Key? key}) : super(key: key);

  @override
  State<PrecautionsView> createState() => _PrecautionsViewState();
}

class _PrecautionsViewState extends State<PrecautionsView> {
  final String _appBarTittle = 'Precautions';
  int _currentStep = 0;

  void _changeStep(step) {
    setState(() {
      _currentStep = step;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: buildStepper());
  }

  Stepper buildStepper() {
    return Stepper(
      steps: StepItems.stepItems,
      currentStep: _currentStep,
      onStepTapped: (step) {
        _changeStep(step);
      },
      controlsBuilder: (context, _) {
        return const SizedBox();
      },
    );
  }

  AppBar buildAppBar() => AppBar(
      title: Text(_appBarTittle),
      leading: IconButton(
          onPressed: () => context.go(NavigationEnum.ZONES_VIEW.rawValue),
          icon: const Icon(Icons.arrow_back)));
}
