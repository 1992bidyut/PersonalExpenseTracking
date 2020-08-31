import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_expences/widgets/user_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


//  String titleInput;
//  String amountInput;
  final titleController=TextEditingController();
  final amountController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Expedience'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Second way to change the default design
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.amber,
                child: Text(
                  'CHART!',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                elevation: 5,
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
//First way to change designe
//        Card(
//          color: Colors.amber,
//          child: Container(
//            width: double.infinity,
//          child: Text('CHART!'),
//          ),
//          elevation: 5,
//        ),
