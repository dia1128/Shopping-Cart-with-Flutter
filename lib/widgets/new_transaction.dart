import 'package:flutter/material.dart';


class  NewTransaction extends StatefulWidget {

 final Function addTx;

NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}  

class _NewTransactionState extends State<NewTransaction> {
 final titleController = TextEditingController();

 final amountController = TextEditingController();

void submitData ()
{
  final enteredTitle = titleController.text;
  final enteredAmount = double.parse(amountController.text);

  if(enteredTitle.isEmpty || enteredAmount <= 0)
    {
      return;
    }
  widget.addTx(
     enteredTitle,
     enteredAmount,
  );
}

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
      onSubmitted: (_) => submitData,
    ) ,
    TextField(autocorrect: true,
    autofocus: true,
    decoration: InputDecoration(labelText: 'Amount'),


      controller: amountController,
keyboardType: TextInputType.number,
onSubmitted: (_) => submitData, //anonymous function, underscore doesn't mean antything
// onChanged: (val){
// amountInput = double.parse(val);
// },

),
FlatButton(

  onPressed:  submitData,
     child: Text('Add Transaction'),
     textColor: Colors.purple,
)
],
    ),
)
);
  }
}
