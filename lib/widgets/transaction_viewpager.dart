import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Nagad/widgets/transactions_all_widget.dart';
import 'package:Nagad/widgets/transactions_in_widget.dart';
import 'package:Nagad/widgets/transactions_out_widget.dart';

import '../models/transactions.dart';
import '../styles/AppTheme.dart';

class TransactionViewpager extends StatefulWidget {
  const TransactionViewpager({Key? key}) : super(key: key);

  @override
  State<TransactionViewpager> createState() => _TransactionViewpagerState();
}

class _TransactionViewpagerState extends State<TransactionViewpager> {
  List<Transactions> allTransactionList = [
    Transactions(
      tId: 0,
      tIcon: "assets/ic_transactions_out.png",
      tTitle: "Cash Out",
      tBody: "01911-464583",
      tTime: "Mar 27, 02:18 AM",
      tAmt: "22,500",
      tAmtIcon: "assets/ic_transactions_out_taka.png",
      tType: "OUT",
    ),
    Transactions(
      tId: 1,
      tIcon: "assets/ic_transactions_in.png",
      tTitle: "Send Money",
      tBody: "01537-472673",
      tTime: "Mar 17, 10:23 AM",
      tAmt: "16,700",
      tAmtIcon: "assets/ic_transactions_out_taka.png",
      tType: "IN",
    ),
  ];

  List<Transactions> inTransactionList = [];

  List<Transactions> outTransactionList = [];

  int getTId(Transactions transaction) {
    if (transaction.tType == "IN") {
      return inTransactionList.indexOf(transaction);
    } else {
      return outTransactionList.indexOf(transaction);
    }
  }

  @override
  void initState() {
    super.initState();

    // Separate transactions into in and out lists
    for (Transactions transaction in allTransactionList) {
      if (transaction.tType == "IN") {
        inTransactionList.add(transaction);
      } else {
        outTransactionList.add(transaction);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transactions',
          style: TextStyle(
            color: AppTheme.textColorDark,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: AppTheme.primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 16),
          Text(
            'All Transactions',
            style: TextStyle(
              color: AppTheme.textColorDark,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          TransactionAllWidget(
            list: allTransactionList,
            getTId: getTId,
          ),
          SizedBox(height: 16),
          Text(
            'In Transactions',
            style: TextStyle(
              color: AppTheme.textColorDark,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          TransactionsInWidget(list: inTransactionList),
          SizedBox(height:
          Text(
            'Out Transactions',
            style: TextStyle(
              color: AppTheme.textColorDark,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
            SizedBox(height: 16),
            TransactionsOutWidget(list: outTransactionList),
            ],
          ),
        ),
      ),
    );
  }}