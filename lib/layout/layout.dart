import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../pages/homePage.dart';
import '../pages/menuPage.dart';
import '../pages/personPage.dart';
import 'layout_Provider.dart';

class Layout extends StatelessWidget {
  Layout({Key? key}) : super(key: key);
  List screen = [HomePage(), MenuPage(), PErsonPage()];

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    final provider = Provider.of<LyoutProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => LyoutProvider(),
      builder: (context, chiled) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            provider.changeBottomNavigationBar(index, context);
          },
          currentIndex: provider.currantPageIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'الطلبات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'الملف الشخصي'),
          ],
        ),
        body: screen[provider.currantPageIndex],
      ),
    );
  }
}
