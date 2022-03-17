import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Список элементов',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.green,
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
            title: const Text('Список элементов')
        ),

        body: ListView.builder(itemBuilder: (context, i){
          var res = pow(2,i);
          if(i.isOdd) return const Divider();
          return Container(padding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
            child: Row(
              children:[
                Text('2 ^ $i = $res')
              ],
            ),
          );
        }),
      ),
    );
  }
}