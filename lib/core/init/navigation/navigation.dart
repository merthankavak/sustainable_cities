import 'package:go_router/go_router.dart';

import '../../../feature/call/call_view.dart';
import '../../../feature/home/home_view.dart';
import '../../../feature/info/info_view.dart';
import '../../../feature/quiz/quiz_view.dart';
import '../../../feature/zones/sub-view/precautions_view.dart';
import '../../../feature/zones/zones_view.dart';
import '../../../product/enum/navigation_enum.dart';

class Navigation {
  final router = GoRouter(routes: [
    GoRoute(
      path: NavigationEnum.HOME_VIEW.rawValue,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: NavigationEnum.CALL_VIEW.rawValue,
      builder: (context, state) => const CallView(),
    ),
    GoRoute(
      path: NavigationEnum.QUIZ_VIEW.rawValue,
      builder: (context, state) => const QuizView(),
    ),
    GoRoute(
      path: NavigationEnum.INFO_VIEW.rawValue,
      builder: (context, state) => const InfoView(),
    ),
    GoRoute(
      path: NavigationEnum.PRECAUTIONS_VIEW.rawValue,
      builder: (context, state) => const PrecautionsView(),
    ),
    GoRoute(
      path: NavigationEnum.ZONES_VIEW.rawValue,
      builder: (context, state) => const ZonesView(),
    ),
  ]);
}
