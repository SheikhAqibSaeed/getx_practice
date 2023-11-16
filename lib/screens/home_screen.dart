import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Getx App'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Getx'),
              subtitle: Text('This is Getx tutorials'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure you want to delete this chat?',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('OK')
                  ),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('Cencel'))
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Getx'),
              subtitle: Text('This is Getx tutorials'),
              onTap: (){
                Get.bottomSheet(
                    Container(
                      color: Colors.orangeAccent,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text('Light Mode'),
                        onTap: (){
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark Mode'),
                        onTap: (){
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   Get.snackbar('Hello world', 'This is Getx app!',
      //   backgroundColor: Colors.blue,
      //     snackPosition: SnackPosition.BOTTOM,
      //     snackStyle: SnackStyle.FLOATING,
      //     icon: Icon(Icons.add),
      //     onTap: (snak){
      //
      //     },
      //     mainButton: TextButton(onPressed: (){
      //     }, child: Text('click'),
      //     )
      //   );
      // },
      //   backgroundColor: Colors.green,
      // ),
    );
  }
}
