import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/controller/drawer.dart';
import 'package:login_page/controller/tabs.dart';

class MyProfile2 extends StatefulWidget {
  const MyProfile2({Key? key}) : super(key: key);

  @override
  State<MyProfile2> createState() => _MyProfile2State();
}

class _MyProfile2State extends State<MyProfile2> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int _selectvalueDiv = 1;
  int _selectvalueBac = 1;
  var itemsCat = ["", ""]; // Option 2
  var dropdownvalueCat;
  var itemsCast = ["Hindu", "Christian", "Muslim", "Shik"]; // Option 2
  var dropdownvalueCast;

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
                        "LinkedIn ID",
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
                        "Aadhar ID",
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
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Divyangjan(PH)",
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
                            groupValue: _selectvalueDiv,
                            onChanged: (value) => setState(() {
                              _selectvalueDiv = 1;
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
                            groupValue: _selectvalueDiv,
                            onChanged: (value) => setState(() {
                              _selectvalueDiv = 2;
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
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Percentage of Disability(%)",
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
                        "UDID Card No",
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
                    hint: Text("Select The Type Of Disability"),
                    items: itemsCat.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        dropdownvalueCat = newValue as String;
                      });
                    },
                    value: dropdownvalueCat,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: height * .001, top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Divyangjan(PH)",
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
                            groupValue: _selectvalueBac,
                            onChanged: (value) => setState(() {
                              _selectvalueBac = 1;
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
                            groupValue: _selectvalueBac,
                            onChanged: (value) => setState(() {
                              _selectvalueBac = 2;
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
                    hint: Text("Select Religion"),
                    items: itemsCast.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        dropdownvalueCast = newValue as String;
                      });
                    },
                    value: dropdownvalueCast,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: height * .05,
                      width: height * .39,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(BottomNavi());
                        },
                        child: Wrap(
                          children: [
                            Text("Summit", style: TextStyle(fontSize: 20)),
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
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
