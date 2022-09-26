import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  MyWidget(
      {required this.OnTap,
      required this.value,
      required this.mytitle,
      required this.mysubtitle});
  String? mytitle;
  String? mysubtitle;

  bool value = false;

  void Function(bool)? OnTap;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    bool? myVal;
    return SwitchListTile(
      title: Text("${widget.mytitle}"),
      subtitle: Text("${widget.mysubtitle}"),
      onChanged: widget.OnTap,
      value: widget.value,
    );
  }
}
