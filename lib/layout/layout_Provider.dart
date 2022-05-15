import 'package:flutter/cupertino.dart';
import '/pages/homePage.dart';
import '/pages/menuPage.dart';
import '/pages/personPage.dart';
import '/splash/splash.dart';

class LyoutProvider with ChangeNotifier {
  List screen = [HomePage(), MenuPage(), PErsonPage()];
  List appBar = ['الرئيسية', 'طلبات','الملف الشخصي' ];

  int currantPageIndex = 0;
  void changeBottomNavigationBar(int index, context) {
    currantPageIndex = index;
    notifyListeners();
  }
}
