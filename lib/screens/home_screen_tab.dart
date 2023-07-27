import 'package:flutter/material.dart';
import 'package:transaction_management_app/data/user_info.dart';
import 'package:transaction_management_app/utils/constants.dart';
import 'package:transaction_management_app/widget/income_expense_card.dart';
import 'package:transaction_management_app/widget/transaction_item_tile.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultSpacing + 30),
          ListTile(
            title: Text('Hey! ${userdata.name}'),
            leading: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: Image.asset(
                "assets/images/avatar.jpeg",
              ),
            ),
            trailing: Image.asset(
              'assets/icons/bell.png',
            ),
          ),
          const SizedBox(
            height: defaultSpacing,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  userdata.totalBalance,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontSize: fontSizeHeading,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(
                  height: defaultSpacing / 2,
                ),
                Text(
                  'Total balance',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: fontLight),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: defaultSpacing + 2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeExpenseCard(
                  expenseData: ExpenseData(
                    label: "Income",
                    amount: userdata.inflow,
                    icon: Icons.arrow_upward_rounded,
                  ),
                ),
              ),
              const SizedBox(width: defaultSpacing),
              Expanded(
                child: IncomeExpenseCard(
                  expenseData: ExpenseData(
                    label: "Expense",
                    amount: userdata.outflow,
                    icon: Icons.arrow_downward_rounded,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: defaultSpacing + 2,
          ),
          Text(
            "Recent Transactions",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: defaultSpacing + 2,
          ),
          const Text(
            "Today",
            style: TextStyle(
              color: fontLight,
            ),
          ),
          ...userdata.transactions.map(
            (transaction) => TransactionItemTile(
              transaction: transaction,
            ),
          ),
          const SizedBox(
            height: defaultSpacing,
          ),
          const Text(
            "Yesterday",
            style: TextStyle(
              color: fontLight,
            ),
          ),
          ...userdata.transactions2.map(
            (transaction) => TransactionItemTile(
              transaction: transaction,
            ),
          ),
        ],
      ),
    );
  }
}
