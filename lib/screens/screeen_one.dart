import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tiktok_app/screens/screeen_two.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key, this.name=''});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One ' + Get.arguments[1]),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){
              // Get.to(ScreenTwo());
              Get.toNamed('/screenTwo');
            }, child: Text('Screen-Two')),
          ],
        ),
      ),
    );
  }
}
