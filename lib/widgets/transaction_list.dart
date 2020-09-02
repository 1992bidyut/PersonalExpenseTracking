import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transaction;
  TransactionList(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
     child: ListView.builder(
       itemBuilder: (ctx,index){
         return Card(
           child: Row(
             children: <Widget>[
               Container(
                 margin: EdgeInsets.symmetric(
                     vertical: 10,
                     horizontal: 15
                 ),
                 decoration: BoxDecoration(
                   border: Border.all(
                       color: Theme.of(context).primaryColor,
                       width: 2),
                 ),
                 padding: EdgeInsets.all(10),
                 child: Text(
                   '\$${_transaction[index].amount.toStringAsFixed(2)}',             //this is string interpolation that replace the '+' concatenations
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                       color: Colors.purple
                   ),
                 ),
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text(
                     _transaction[index].title,
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 16
                     ),
                   ),
                   Text(
                     DateFormat('yyyy-MM-dd HH:mm:ss').format(_transaction[index].date),
                     style: TextStyle(
                       color:Colors.grey,
                       fontSize: 14,
                     ),
                   ),
                 ],
               )
             ],
           ),
         );
       },
       itemCount: _transaction.length,
      ),
    );
  }
}
