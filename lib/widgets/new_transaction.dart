import 'package:flutter/material.dart';
import 'package:my_expences/widgets/user_transaction.dart';
class NewTransaction extends StatelessWidget {
  final titleController=TextEditingController();
  final amountController=TextEditingController();
  final Function _addNewTransaction;

  NewTransaction(this._addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title',),
                controller: titleController,
                keyboardType: TextInputType.text,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
                keyboardType: TextInputType.number,
              ),
              FlatButton(
                child: Text('Add Transection'),
                textColor: Colors.purple,
                onPressed: (){
                  _addNewTransaction(titleController.text,double.parse(amountController.text));
//                      print(titleInput);
//                      print(amountInput);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
