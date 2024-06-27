import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/applocal.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 122, 141, 158),
        title: Text("${getLang(context, "homepage")}"),
      ),
      body: Container(child: Text("${getLang(context, "welcome")}")),
    );
  }
}
