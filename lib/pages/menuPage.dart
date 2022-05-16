import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.7,
          ),
          appBar: AppBar(
            title: Text('طلباتي'),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(
                text: 'الاستفسارات',
              ),
              Tab(
                text: 'قيد التنفيذ',
              ),
              Tab(
                text: 'المكتملة',
              )
            ]),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  itemOrder('تصميم صفحة', '4'),
                  itemOrder('موشن غرافيك', '3'),
                  itemOrder('تصميم لوغو', '3'),
                  itemOrder('تصميم بوستر', '3')
                ],
              ),
            ),
          ),
        ));
  }
}

Widget itemOrder(String title, String day) => Card(
      child: Container(
        height: 130,
        child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.chat_outlined,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.question_answer,
                            color: Colors.grey[700],
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'استفسارات',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.grey[700],
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'مدة التسليم $day ايام',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
