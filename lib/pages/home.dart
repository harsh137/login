import 'package:flutter/material.dart';
import 'package:login_page/controller/drawer.dart';

class Myhome extends StatelessWidget {
  String name = "";
  String email = "";
  String course = "";

  /*Myhome(String name,String email,String course){
    this.name=name;
    this.email=email;
    this.course=course;

  }*/
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _globalKey,
        drawer: SideDrawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 76),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              _globalKey.currentState?.openDrawer();
                            },
                            icon: Icon(Icons.menu)),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
