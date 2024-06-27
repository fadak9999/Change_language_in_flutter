import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/applocal.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  //

  bool one = false;
  bool two = false;
  bool three = false;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 208, 206),
      appBar: AppBar(),
      body: Column(
        children: [
          CheckboxListTile(
              checkColor: Colors.amber,
              activeColor: Colors.black,
              title: Text("${getLang(context, "one")}"),
              value: one,
              onChanged: ((value) {
                setState(() {
                  one = value!;
                });
              })),
          CheckboxListTile(
              checkColor: Colors.amber,
              activeColor: Colors.black,
              title: Text("${getLang(context, "tow")}"),
              value: two,
              onChanged: ((value) {
                setState(() {
                  two = value!;
                });
              })),
          CheckboxListTile(
              checkColor: Colors.amber,
              activeColor: Colors.black,
              title: Text("${getLang(context, "three")}"),
              value: three,
              onChanged: ((value) {
                setState(() {
                  three = value!;
                });
              })),
        ],
      ),
    );
  }
}
