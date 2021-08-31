import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {

  UserTransaction();
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List <Transaction> _userTransaction = [
    Transaction("t1", "Grocery", 69.99, DateTime.now()),
    Transaction("t2", "Shoes",80.99, DateTime.now()),
  ];


  
  void _addNewTransaction(String Txtitle, double Txamount){
    final newTx = Transaction(DateTime.now().toString(),Txtitle, Txamount, DateTime.now());
    setState(() {
      _userTransaction.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          NewTransaction(_addNewTransaction),
          TransactionList(_userTransaction),
        ],
    ); 
  }
}

