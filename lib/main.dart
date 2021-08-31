import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/widgets/user_transaction.dart';



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


  String titleInput = "";
  double amountInput = 0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

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

    UserTransaction()


          ],
          ),
        ),

    );

  }
}
