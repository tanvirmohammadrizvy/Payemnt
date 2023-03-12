import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Nagad/styles/AppTheme.dart';
import 'package:Nagad/widgets/transaction_viewpager.dart';

class TransactionBody extends StatefulWidget {
  const TransactionBody({Key? key}) : super(key: key);

  @override
  State<TransactionBody> createState() => _TransactionBodyState();
}

class _TransactionBodyState extends State<TransactionBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Transactions", style: AppTheme.actionBarText,),
      ),
      body: Column(children: [
        Card(elevation: 2, margin: const EdgeInsets.all(12) ,color: Colors.white,
          child: Padding(padding: EdgeInsets.all(20),
              child: Row(children: [
                Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black87, size: 18),
                Expanded(child: Text("March 2023", style: AppTheme.monthText,textAlign: TextAlign.center,)),
                Icon(Icons.arrow_forward_ios_sharp, color: Colors.black87, size: 18),
              ],),),),

        Expanded(child: TransactionViewpager())
      ],),
    );
  }
  
}