import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/applocal.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _testState();
}

class _testState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 122, 141, 158),
        title: Text("${getLang(context, "homepage")}"),
      ),
      body: Center(
        child: Column(children: [
          Container(
              padding: EdgeInsets.all(60),
              child: Text("${getLang(context, "welcome")}")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'page2');
              },
              child: Text("${getLang(context, "button")}"))
        ]),
      ),
    );
  }
}
