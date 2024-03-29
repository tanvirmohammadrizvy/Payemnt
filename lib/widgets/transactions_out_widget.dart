import 'package:Nagad/models/transactions.dart';
import 'package:flutter/cupertino.dart';

class TransactionOutWidget extends StatefulWidget {
  const TransactionOutWidget({Key? key, required List<Transactions> list, required Null Function(dynamic transaction) onTap}) : super(key: key);

  @override
  State<TransactionOutWidget> createState() => _TransactionOutWidgetState();
}

class _TransactionOutWidgetState extends State<TransactionOutWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Out Transactions"),
    );
  }

}