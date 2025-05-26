import 'package:flutter/widgets.dart';
import 'package:mysite/routing/routes.dart'
import 'package:mysite/constants/controllers.dart'

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
);

