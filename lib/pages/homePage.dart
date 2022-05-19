import 'package:final_pro/components.dart';
import 'package:final_pro/pages/ScreenItem.dart';
import 'package:final_pro/pages/ScreenItem2.dart';
import 'package:final_pro/pages/ScreenItem3.dart';
import 'package:final_pro/pages/ScreenItem4.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('انجز لي التصميم'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              item('تصميم لوغو', 'assets/images/icon.png', 'شعار لوغو للمشاريع',
                  () {
                naviagtTo(context, Screen1());
              }),
              SizedBox(
                height: 15,
              ),
              item('تصميم بطاقة دعوة', 'assets/images/img.jpg',
                  'بطاقة دعوة المناسبات', () {
                naviagtTo(context, Screen2());
              }),
              SizedBox(
                height: 15,
              ),
              item('تصميم رول اب', 'assets/images/icon2.jpg', 'ستاند رول اب',
                  () {
                naviagtTo(context, Screen3());
              }),
              SizedBox(
                height: 15,
              ),
              item('تصميم بطاقة اعمال', 'assets/images/images.jpg',
                  'بطاقة دعوة المناسبات', () {
                naviagtTo(context, Screen4());
              })
            ],
          ),
        ),
      ),
    );
  }
}

Widget item(String title, String image, String body, Function function) =>
    InkWell(
      onTap: () => function(),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Card(
          child: Container(
            height: 130,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue[700],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          body,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
