import 'package:Nagad/widgets/transactions_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/transactions.dart';
import './transactions_all_widget.dart';

class TransactionAllWidget extends StatelessWidget {
  final List<Transactions> list;
  final List<TransactionViewpager> list;
  const TransactionAllWidget({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        final item = list[index];
        return GestureDetector(
          onTap: () {
            String imageName = "";
            if (item.tId == 0) {
              imageName = "first.png";
            } else if (item.tId == 1) {
              imageName = "second.png";
            } else if (item.tId == 2) {
              imageName = "third.png";
            } else if (item.tId == 3) {
              imageName = "four.png";
            }
            showDialog(
              context: context,
              builder: (_) {
                return Dialog(
                  child: Container(
                    width: 280,
                    height: 390,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/$imageName"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: TransactionListItem(item: item),
        );
      },
    );
  }
}
