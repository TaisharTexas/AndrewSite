import 'package:get/get.dart';

class MyNavigationController extends GetxController{
  static MyNavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigationKey = GlobalKey();

  Future<dynamic> navigateTo(String routeName){
    return navigationKey.currentState.pushNamed(routeName);
  }

  goBack() => navigationKey.currentState.pop();
}