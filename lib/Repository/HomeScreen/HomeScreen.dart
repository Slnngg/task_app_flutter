import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Screens/AuthScreen/LoginScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool _snap = false;
bool _floating = false;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            snap: _snap,
            floating: _floating,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(28),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Таны нэр:  ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'nunito',
                          ),
                        ),
                        Text(
                          'test',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'nunito',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 15, left: 15, bottom: 20),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: ListTile(
                                leading: Icon(
                                  Icons.person_outline,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                title: Text(
                                  "Таны мэдээлэл",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'nunito',
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined,
                                    size: 20, color: Colors.grey),
                                onTap: () {},
                              ),
                            ),
                            Divider(height: 1),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: ListTile(
                                leading: Icon(
                                  Icons.article_outlined,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                title: Text(
                                  "Профайл засах",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'nunito',
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined,
                                    size: 20, color: Colors.grey),
                                onTap: () {},
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: ListTile(
                                leading: Icon(
                                  Icons.notifications_none_outlined,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                title: Text(
                                  "Нууц үг солих",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'nunito',
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined,
                                    size: 20, color: Colors.grey),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          child: ListTile(
                            leading: Icon(Icons.exit_to_app,
                                size: 25, color: Colors.grey),
                            title: Text(
                              "Гарах",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'nunito',
                              ),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined,
                                size: 20, color: Colors.grey),
                            onTap: () {
                              Get.off(LoginScreen());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
