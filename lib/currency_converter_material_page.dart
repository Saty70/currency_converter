import 'package:flutter/material.dart';
// 1 Create a var that store the final result
// 2 Create a method that will multiply the val given by text input by user
// 3 Store the resultant val in var created in first step
// 4 Display the var

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                      width: 2.0,
                      style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.circular(10),
                  );
    
    return Scaffold( 
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(backgroundColor: const Color.fromARGB(255, 63, 84, 95), elevation: 0, title: const Text("INR to USD",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34, color: Colors.white),),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //int -> String intval.toString();
              //String - > int int.Parse(stringval);
               Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "INR",
                    hintStyle: const TextStyle(
                      color: Colors.white60
                      ),
                    prefixIcon: const Icon(
                      Icons.monetization_on_outlined
                      ),
                    prefixIconColor: Colors.white60,
                    filled: true,
                    fillColor: Colors.grey,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: false,
                  ), 
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    // types of mode 1)debug 2)release 3)profile
                    // if (kDebugMode) {
                    //   print("button clicked");
                    // }
                    // result = double.parse(textEditingController.text) * 81;
                    setState(() {
                      result = double.parse(textEditingController.text) * 83.37;
                    });

                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.black,
                    foregroundColor:Colors.white,
                    minimumSize: const Size(double.infinity , 70),
                  ), 
                  child: const Text("Convert"),
                ),
              )

            ],
          ),
        ));
  }
}

