import 'package:flutter/material.dart';

import '../../screens/navigation_wrapper/navigation_wrapper.dart';
import '../../screens/record/record_screen.dart';
import '../../screens/report/report_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String record = '/record';
  static const String report = '/report';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => NavigationWrapper());
      case record:
        return MaterialPageRoute(builder: (_) => RecordScreen());
      case report:
        return MaterialPageRoute(builder: (_) => const ReportScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))),
        );
    }
  }
}
