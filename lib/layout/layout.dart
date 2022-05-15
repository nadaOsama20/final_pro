import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'layout_Provider.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    final provider = Provider.of<LyoutProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => LyoutProvider(),
      builder: (context, chiled) => Scaffold(
        appBar: AppBar(
          title: Text(provider.appBar[provider.currantPageIndex]),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            provider.changeBottomNavigationBar(index, context);
          },
          currentIndex: provider.currantPageIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'طلبات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'الملف الشخصي'),
          ],
        ),
        body: provider.screen[provider.currantPageIndex],
      ),
    );
  }
}
