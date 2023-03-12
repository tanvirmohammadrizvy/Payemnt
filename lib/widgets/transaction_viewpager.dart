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
        tTitle: "Send Money",
        tBody: "01731-666385",
        tTime: "Yesterday, 10:33 PM",
        tAmt: "23,400",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Send Money",
        tBody: "01979-793366",
        tTime: "Mar 10, 05:29 AM",
        tAmt: "11,800",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Cash Out",
        tBody: "01775-475232",
        tTime: "Mar 9, 04:39 AM",
        tAmt: "5,100",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Cash In",
        tBody: "01870-201567",
        tTime: "Mar 8, 10:42 PM",
        tAmt: "19,700",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Send Money",
        tBody: "01905-860353",
        tTime: "Mar 4, 02:44 AM",
        tAmt: "20,700",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Cash In",
        tBody: "01701-048560",
        tTime: "Mar 3, 04:38 PM",
        tAmt: "15,500",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Cash In",
        tBody: "01309-584093",
        tTime: "Mar 3, 04:33 PM",
        tAmt: "25,550",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
  ];

  List<Transactions> inTransactionList = [
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Received Money",
        tBody: "Anik",
        tTime: "Aug 12, 11:27 AM",
        tAmt: "2050",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Cash In",
        tBody: "Sk Telecoms",
        tTime: "Aug 12, 11:27 AM",
        tAmt: "1200",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Cash In",
        tBody: "Sk Telecoms",
        tTime: "Aug 12, 11:27 AM",
        tAmt: "5000",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Cash In",
        tBody: "Sk Telecoms",
        tTime: "Aug 12, 11:27 AM",
        tAmt: "300",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Cash In",
        tBody: "Sk Telecoms",
        tTime: "Aug 12, 11:27 AM",
        tAmt: "1500",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_in.png",
        tTitle: "Cash In",
        tBody: "Sk Telecoms",
        tTime: "Aug 12, 11:27 AM",
        tAmt: "3000",
        tAmtIcon: "assets/ic_transactions_in_taka.png",
        tType: "IN"),
  ];

  List<Transactions> outTransactionList = [
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Payment",
        tBody: "Star Cineplex",
        tTime: "Aug 13, 10:29 PM",
        tAmt: "1200",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Payment",
        tBody: "Star Cineplex",
        tTime: "Aug 13, 10:29 PM",
        tAmt: "1200",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Payment",
        tBody: "Star Cineplex",
        tTime: "Aug 13, 10:29 PM",
        tAmt: "1200",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Payment",
        tBody: "Star Cineplex",
        tTime: "Aug 13, 10:29 PM",
        tAmt: "1200",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Payment",
        tBody: "Star Cineplex",
        tTime: "Aug 13, 10:29 PM",
        tAmt: "1200",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Payment",
        tBody: "Star Cineplex",
        tTime: "Aug 13, 10:29 PM",
        tAmt: "1200",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
    Transactions(
        tId: 0,
        tIcon: "assets/ic_transactions_out.png",
        tTitle: "Payment",
        tBody: "Star Cineplex",
        tTime: "Aug 13, 10:29 PM",
        tAmt: "1200",
        tAmtIcon: "assets/ic_transactions_out_taka.png",
        tType: "OUT"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const TabBar(
          labelColor: Colors.deepOrange,
          unselectedLabelColor: Colors.black87,
          indicatorColor: Colors.deepOrange,
          tabs: [
            Tab(
              text: "ALL",
            ),
            Tab(
              text: "IN",
            ),
            Tab(
              text: "OUT",
            ),
          ],
        ),
        body: TabBarView(
          children: [
            TransactionAllWidget(
              list: allTransactionList,
            ),
            TransactionAllWidget(
              list: inTransactionList,
            ),
            TransactionAllWidget(
              list: outTransactionList,
            ),
          ],
        ),
      ),
    );
  }
}
