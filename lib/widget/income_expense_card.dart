// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:transaction_management_app/utils/constants.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  const ExpenseData({
    required this.label,
    required this.amount,
    required this.icon,
  });
}

class IncomeExpenseCard extends StatelessWidget {
  final ExpenseData expenseData;

  const IncomeExpenseCard({super.key, required this.expenseData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(defaultSpacing / 3),
      decoration: BoxDecoration(
        color: expenseData.label == "Income" ? primaryDark : secondaryLight,
        borderRadius: BorderRadius.circular(defaultSpacing),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing / 3),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    expenseData.label,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: defaultSpacing, right: defaultSpacing),
                    child: Text(
                      expenseData.amount,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Icon(expenseData.icon, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
