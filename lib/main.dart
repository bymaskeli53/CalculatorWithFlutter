import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

 class _MyHomePage extends StatefulWidget {
  late final String title;
  _MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();

}






class _MyHomePageState extends State<_MyHomePage> {
  final myControllerTextField1 = TextEditingController();
  final myControllerTextField2 = TextEditingController();
  Color textColor = Color(0xff134bba);

  var myString = "";





  double result = 0;

  void additionFunction() {
    result = int.parse(myControllerTextField1.text).toDouble() + int.parse(myControllerTextField2.text).toDouble() ;
    setState(() {
      myString = result.toString();
    });
  }

  void subtractionFunction() {
    result = (int.parse(myControllerTextField1.text).toDouble() - int.parse(myControllerTextField2.text)).toDouble() ;
    setState(() {
      myString = result.toString();
    });
  }

  void multiplicationFunction() {
    result = int.parse(myControllerTextField1.text).toDouble() * int.parse(myControllerTextField2.text).toDouble();
    setState(() {
      myString = result.toString();
    });

  }

  void divisionFunction() {
    result = (int.parse(myControllerTextField1.text) / int.parse(myControllerTextField2.text));
    setState(() {
      myString = result.toString();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

      Center(


        child: Column( mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(height: 50,),TextField(decoration: InputDecoration(hintText: "First Number",contentPadding: EdgeInsets.all(20.0)),keyboardType: TextInputType.number,key: Key("textField1"),controller: myControllerTextField1,),SizedBox(height: 50,),TextField(decoration: InputDecoration(hintText: "Second Number",contentPadding: EdgeInsets.all(20.0)),keyboardType: TextInputType.number,controller: myControllerTextField2,),SizedBox(height: 100,),
            Row(
            children: <Widget>[
              Spacer(),
              TextButton(onPressed: () {additionFunction();},style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black),backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)), child: Text("+",style: TextStyle(fontSize: 25),)),
                Spacer(),

              TextButton(onPressed: () {subtractionFunction();},style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black),backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)), child: Text("-",style: TextStyle(fontSize: 25),)),
              Spacer(),

              TextButton(onPressed: () {multiplicationFunction();},style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black),backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)), child: Text("x",style: TextStyle(fontSize: 25),)),
              Spacer(),

              TextButton(onPressed: () {divisionFunction();},style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black),backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)), child: Text("/",style: TextStyle(fontSize: 25),)),
              Spacer(),
            ],
        ), SizedBox(height: 100,),

            Text(myString,style: TextStyle(fontSize: 20,color: textColor),)
          ],
        ),),

    );
  }
}
