import 'package:flutter/material.dart';
import 'user_transaction.dart';

class  NewTransaction extends StatelessWidget {

 final Function addTx;
 final titleController = TextEditingController();
 final amountController = TextEditingController();

NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
    elevation: 5,
    child: Container(
    padding: EdgeInsets.all(10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
    TextField(
    autocorrect: true,
    autofocus: true,
    decoration: InputDecoration(labelText: 'Title',),
    // onChanged: (val) {
    //   TextEditingController() = val;
    // },
      controller : titleController,
    ) ,
    TextField(autocorrect: true,
    autofocus: true,
    decoration: InputDecoration(labelText: 'Amount'),
controller: amountController,
// onChanged: (val){
// amountInput = double.parse(val);
// },

),
FlatButton(

  onPressed: () {
    addTx(titleController.text,
        double. parse(amountController.text));


        },
     child: Text('Add Transaction'),
     textColor: Colors.purple,)
],
    ),
)
);
  }
}
