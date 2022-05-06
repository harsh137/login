import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/controller/drawer.dart';
import 'package:login_page/pages/profile2.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _selectvalue = 1;

  var items = ["ST", "SC", "OBC", "GENRAL"]; // Option 2
  var dropdownvalue;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        key: _globalKey,
        drawer: const SideDrawer(),
        body: Form(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: height * .1),
                    child: IconButton(
                        onPressed: () {
                          _globalKey.currentState?.openDrawer();
                        },
                        icon: const Icon(Icons.menu)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: height * .1),
                    child: Image.asset(
                      "assets/logo2.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(top: height * .09),
                padding: EdgeInsets.all(height * .06),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Update Personal Details(1/2)",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff11459e)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "First Name",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Last Name",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Father's Name  ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Mother's Name",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Father's Occupation",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Mother's Occupation",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Contact Number",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Reserved Category",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _selectvalue,
                            onChanged: (value) => setState(() {
                              _selectvalue = 1;
                            }),
                            activeColor: Colors.green,
                          ),
                          Text(
                            "Yes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: _selectvalue,
                            onChanged: (value) => setState(() {
                              _selectvalue = 2;
                            }),
                            activeColor: Colors.green,
                          ),
                          Text("No",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17))
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Select a Category",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff11459e)),
                      ),
                    ),
                  ),
                  DropdownButton(
                    isExpanded: true,
                    hint: Text("Select a Category"),
                    items: items.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        dropdownvalue = newValue as String;
                      });
                    },
                    value: dropdownvalue,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: height * .05,
                      width: height * .39,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(MyProfile2());
                        },
                        child: Wrap(
                          children: [
                            Text("NEXT", style: TextStyle(fontSize: 20)),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_sharp,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ))
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
