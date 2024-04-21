import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main(){

  runApp(const MyApp());

}

/*
Types of widget : 
1 StatelessWidget  state immutable
2 StatefulWidget  state muttable
3 InheritedWidget
*/


// State : how data would render and how should it look like



class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : CurrencyConverterMaterialPage());
  }
}

//material app : google app design

//cupertino app : apple app design