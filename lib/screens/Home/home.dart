

import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_theme.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
        actions: [
          IconButton(onPressed: (){
            currentTheme.toggleTheme();
          },  icon: const Icon(Icons.brightness_4_rounded))
        ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data",style: TextStyle(color: Theme.of(context).backgroundColor),),
            Switch(value: _switch, onChanged: (value){
              setState(() {
                _switch = !_switch;
                currentTheme.toggleTheme();
              });
            })
          ],
        ),
      ),
    );
  }
}