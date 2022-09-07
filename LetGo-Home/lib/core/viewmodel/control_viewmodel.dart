import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:page_transition/page_transition.dart';

import '../../view/profile_view.dart';
import '../../view/cart_view.dart';
import '../../view/home_view.dart';
import '../../view/profile/notifications_view.dart';



class ControlViewModel extends GetxController {
  Widget _currentScreen = HomeView();
  int _navigatorIndex = 0;

  Widget get currentScreen => _currentScreen;

  int get navigatorIndex => _navigatorIndex;

  changeCurrentScreen(int index){
    _navigatorIndex = index;
    switch(index){
      case 0:
        _currentScreen = HomeView();
        break;
      case 1:
        _currentScreen = NotificationsView();
        break;
      case 2:
        _currentScreen = CartView();
        break;     
      //case 3:
      //   Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: ProfileView()));
      //  break;

      case 4:
        _currentScreen = ProfileView();
        break;
    }
    update();
  }
}
