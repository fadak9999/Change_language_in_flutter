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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(left: 150),
              child: Text("${getLang(context, "textp2_1")}")),

          ///______________________________
          CheckboxListTile(
              title: Text("one"),
              value: one,
              onChanged: ((value) {
                setState(() {
                  one = value!;
                });
              })),
          CheckboxListTile(
              title: Text("two"),
              value: two,
              onChanged: ((value) {
                setState(() {
                  two = value!;
                });
              })),
          CheckboxListTile(
              title: Text("three"),
              value: three,
              onChanged: ((value) {
                setState(() {
                  three = value!;
                });
              })),
          //
        ],
      ),
    );
  }
}
