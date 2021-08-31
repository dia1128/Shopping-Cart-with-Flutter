import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/widgets/new_transaction.dart';
import 'package:shopping_app/widgets/transaction_list.dart';
import '../models/transaction.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter APP",
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final List <Transaction> _userTransaction = [
    Transaction("t1", "Grocery", 69.99, DateTime.now()),
    Transaction("t2", "Shoes",80.99, DateTime.now()),
  ];



  void _addNewTransaction(String txTitle, double txAmount){
    final newTx = Transaction(
        DateTime.now().toString(),
        txTitle,
        txAmount,
        DateTime.now()
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }


  void _startAddNewTransaction(BuildContext ctx)
  {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector (
            onTap: () {},
            child: NewTransaction(_addNewTransaction),
            behavior: HitTestBehavior.opaque,
        );

    },);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add), onPressed: () =>_startAddNewTransaction(context),), //Button on the top of the page
        ]

      ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            Container(

              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 5,),
            ),


          TransactionList(_userTransaction),

          ],
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),

      ),

    );

  }
}
