import 'dart:io';
import 'package:cleancode/compononets/switchwedget.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> Mycolors = [Colors.white, Colors.grey];
  bool myvalue0 = false;
  bool myvalue1 = false;
  bool myvalue2 = false;
  bool myvalue3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: Mycolors)),
        child: ListView(children: [
          MyWidget(
              mytitle: "Exit the App",
              mysubtitle: "It's hard to see you leave :( ",
              OnTap: (value) {
                setState(() {
                  myvalue0 = !myvalue0;
                  exit(0);
                });
              },
              value: myvalue0),
          MyWidget(
              OnTap: (value) {
                setState(() {
                  myvalue1 = !myvalue1;
                  if (myvalue1 == true) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: [
                              Text("Do you want to proceed ?"),
                              Text("yes"),
                              Text("No")
                            ],
                            backgroundColor: Colors.grey,
                            content: Container(
                              color: Color.fromARGB(255, 116, 178, 178),
                              child: Column(
                                children: [
                                  Divider(
                                    height: 100,
                                  ),
                                  Container(
                                    // color: Colors.purple,
                                    child: Row(
                                      children: [
                                        Text("Mobile"),
                                        Text("962 797777777")
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 100,
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    child: Row(
                                      children: [
                                        Text("Email"),
                                        Text("Example@example.com")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  } else {
                    myvalue1 = false;
                  }
                });
              },
              value: myvalue1,
              mytitle: "show contact information",
              mysubtitle: "Email,Mobile,Etc"),
          MyWidget(
              OnTap: (value) {
                setState(() {
                  myvalue2 = !myvalue2;
                  if (myvalue2 == true) {
                    Mycolors = [Colors.grey, Colors.black];
                  } else {
                    Mycolors = [Colors.white, Colors.grey];
                  }
                });
              },
              value: myvalue2,
              mytitle: "do you want to active the dark mode ? ",
              mysubtitle: ""),
          ElevatedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      actions: [
                        Container(
                            alignment: Alignment.topCenter,
                            child: Text("Do you want to go to home page?")),
                        Divider(
                          height: 25,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            content: Image.network(
                                                "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1"),
                                          );
                                        });
                                  },
                                  child: Text("Yes")),
                              SizedBox(
                                width: 15,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context, MaterialPageRoute(
                                      builder: (context) {
                                        return MyApp();
                                      },
                                    ));
                                  },
                                  child: Text("No")),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.home),
              label: Text("Home")),
          MyWidget(
              OnTap: (value) {
                setState(() {
                  myvalue3 = !myvalue3;
                  if (myvalue3 == true) {
                    showDialog(
                      context: context,
                      builder: ((context) {
                        return AlertDialog(
                          actions: [
                            Container(
                                alignment: Alignment.topCenter,
                                child: Text("Do you want to go to home page?")),
                            Divider(
                              height: 25,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                content: Image.network(
                                                    "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1"),
                                              );
                                            });
                                      },
                                      child: Text("Yes")),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          myvalue3 = false;
                                        });
                                        Navigator.pop(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return MyApp();
                                          },
                                        ));
                                      },
                                      child: Text("No")),
                                ],
                              ),
                            )
                          ],
                        );
                      }),
                    );
                    // myValue = false;
                  } else {
                    myvalue3 = false;
                  }
                });
              },
              value: myvalue3,
              mytitle: "",
              mysubtitle: "")
        ]),
      ),
    );
  }
}
