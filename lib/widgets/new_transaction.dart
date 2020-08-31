import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {
  final titleController=TextEditingController();
  final amountController=TextEditingController();
  final Function _addNewTransaction;

  NewTransaction(this._addNewTransaction);

  void submitData(){
    final enteredTitle=titleController.text;
    final enteredAmount=double.parse(amountController.text);

    if(enteredTitle.isEmpty || enteredAmount<=0){
      return;
    }
    _addNewTransaction(enteredTitle,enteredAmount);
  }

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
                onSubmitted: (_)=>submitData,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_)=>submitData,
              ),
              FlatButton(
                child: Text('Add Transection'),
                textColor: Colors.purple,
                onPressed: submitData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
