// ignore_for_file: constant_identifier_names

enum NavigationEnum { CALL_VIEW, HOME_VIEW, INFO_VIEW, QUIZ_VIEW, ZONES_VIEW, PRECAUTIONS_VIEW }

extension NavigationEnumExtension on NavigationEnum {
  String get rawValue {
    switch (this) {
      case NavigationEnum.HOME_VIEW:
        return '/';
      case NavigationEnum.CALL_VIEW:
        return '/callView';
      case NavigationEnum.INFO_VIEW:
        return '/infoView';
      case NavigationEnum.QUIZ_VIEW:
        return '/quizView';
      case NavigationEnum.ZONES_VIEW:
        return '/zonesView';
      case NavigationEnum.PRECAUTIONS_VIEW:
        return '/precautionsView';
      default:
        return '/homeView';
    }
  }
}
