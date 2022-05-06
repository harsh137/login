import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                Image.asset("assets/logo2.png"),
                SizedBox(
                  height: height * .08,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Fazam",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: height * 0.02),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "MCA",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: const Text('My Profile'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: const Text('Notification'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.star),
              title: const Text('All Starts Leaderboard'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('My Big 5 Personality'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('My Resume'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.donut_small),
              title: const Text('Alumni Dashboard'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('Training/Workshops'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text("My Achievements"),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('My Seminars/Conferences'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('My Internship'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('My Certifications'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('Value added Courses'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('My Projects'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('Patents'),
              onTap: () {},
            ),
          ),
          Theme(
            data: ThemeData(
                splashColor: Color(0xffe6c0fc),
                highlightColor: Color(0xffe8c8fa)),
            child: ListTile(
              leading: Icon(Icons.check_circle),
              title: const Text('Research Paper'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
