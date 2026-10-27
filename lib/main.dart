
import 'package:flutter/material.dart';
// import '../model/apiModel.dart';
import '../view/screen.dart';

void main(){
  runApp(const myApp());
}



class myApp extends StatelessWidget{

  const myApp({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'soko',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3:true,
      ),

      home: ProductionListScreen(),
    );
  }
}