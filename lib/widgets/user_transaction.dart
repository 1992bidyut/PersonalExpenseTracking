import 'package:flutter/material.dart';
import 'package:my_expences/models/transaction.dart';
import 'package:my_expences/widgets/transaction_list.dart';
import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransection = [
    Transaction(
        id: 't1',
        title: 'New Shoes',
        amount: 69.99,
        date: DateTime.now()
    ),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.99,
        date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount){
    final newTx= Transaction(title: txTitle,amount: txAmount,date: DateTime.now(),id: DateTime.now().toString());
    setState(() {
      _userTransection.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransection)
      ],
    );
  }
}
