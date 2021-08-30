import 'package:flutter/material.dart';
import './transaction.dart';

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



class MyHomePage extends StatelessWidget {
  final List <Transaction> transactions = [
    Transaction("t1", "New Shoes", 69.99, DateTime.now()),
    Transaction("t2", "Grocery", 16, DateTime.now()),
  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: <Widget>[
        Container(

          width: double.infinity,
          child: Card(
            color: Colors.blue,
            child: Text('CHART!'),
            elevation: 5,),
        ),
        Column(
         children: transactions.map((tx) {

           return Card(

             child: Row(
               children: <Widget>[

               Container(
                   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                   decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2) ),
                   padding:  EdgeInsets.all(10),
                   child: Text(tx.amount.toString(),
                   style: TextStyle (
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                     color: Colors.purple,
                   ),
                   ),
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                 Text(tx.title,

                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 15,
                   ),
                 ),
                 Text(tx.date.toString(),
                   style: TextStyle(
                     color: Colors.grey,
                     fontSize: 15,
                   ),
                 )
               ],
               )

             ],

             ),
           );
         }).toList(),
        ),

      ],
      )
    );

  }
}
