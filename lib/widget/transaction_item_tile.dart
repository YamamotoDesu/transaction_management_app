// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:transaction_management_app/data/user_info.dart';

import 'package:transaction_management_app/utils/constants.dart';

class TransactionItemTile extends StatelessWidget {
  final Transaction transaction;

  const TransactionItemTile({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  String getSign(TransactionType type) {
    switch (type) {
      case TransactionType.inflow:
        return '+';
      case TransactionType.outflow:
        return '-';
      default:
        return '';
    }
  }

  Color getRandomColor() {
    return Color(Random().nextInt(0XFF000000));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: defaultSpacing / 2,
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset.zero,
            blurRadius: 10,
            spreadRadius: 4,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            defaultRadius,
          ),
        ),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(defaultSpacing / 2),
          decoration:  BoxDecoration(
            color: getRandomColor(),
            borderRadius: const BorderRadius.all(
              Radius.circular(
                defaultRadius / 2,
              ),
            ),
          ),
          child: transaction.categoryType == ItemCategoruType.fashion
              ? const Icon(
                  Icons.supervised_user_circle_sharp,
                )
              : const Icon(Icons.house),
        ),
        title: Text(
          transaction.itemCategoryName,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: fontDark,
              fontSize: fontSizeHeading,
              fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          transaction.itemName,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: fontLight,
                fontSize: fontSizeBody,
              ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${getSign(transaction.transactionType)} ${transaction.amount}",
              style: TextStyle(
                color: transaction.transactionType == TransactionType.outflow
                    ? Colors.red
                    : fontDark,
                fontSize: fontSizeBody,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              transaction.date,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: fontLight,
                    fontSize: fontSizeBody,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
