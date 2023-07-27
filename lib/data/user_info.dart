enum TransactionType {
  outflow,
  inflow,
}

enum ItemCategoruType {
  fashion,
  grocery,
  payments,
}

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;
  final List<Transaction> transactions2;
  const UserInfo({
    required this.name,
    required this.totalBalance,
    required this.inflow,
    required this.outflow,
    required this.transactions,
    required this.transactions2,
  });
}

class Transaction {
  final ItemCategoruType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction({
    required this.categoryType,
    required this.transactionType,
    required this.itemCategoryName,
    required this.itemName,
    required this.amount,
    required this.date,
  });
}

const List<Transaction> transactions = [
  Transaction(
    categoryType: ItemCategoruType.fashion,
    transactionType: TransactionType.inflow,
    itemCategoryName: "Shoes",
    itemName: "Puma Sneakers",
    amount: "\$3,500,00",
    date: "Oct, 23",
  ),
  Transaction(
    categoryType: ItemCategoruType.fashion,
    transactionType: TransactionType.inflow,
    itemCategoryName: "Shoes",
    itemName: "Puma Sneakers",
    amount: "\$3,500,00",
    date: "Oct, 23",
  ),
  Transaction(
    categoryType: ItemCategoruType.fashion,
    transactionType: TransactionType.outflow,
    itemCategoryName: "Shoes",
    itemName: "Puma Sneakers",
    amount: "\$3,500,00",
    date: "Oct, 23",
  ),
];

const List<Transaction> transactions2 = [
  Transaction(
    categoryType: ItemCategoruType.payments,
    transactionType: TransactionType.inflow,
    itemCategoryName: "Payment",
    itemName: "Transfer from Eden",
    amount: "\$10,500,00",
    date: "Sept, 15",
  ),
  Transaction(
    categoryType: ItemCategoruType.grocery,
    transactionType: TransactionType.outflow,
    itemCategoryName: "Food",
    itemName: "Chicken Bing",
    amount: "\$15,500,00",
    date: "Oct, 15",
  ),
  Transaction(
    categoryType: ItemCategoruType.payments,
    transactionType: TransactionType.inflow,
    itemCategoryName: "Payment",
    itemName: "Transfer from Eden",
    amount: "\$10,500,00",
    date: "Sept, 15",
  ),
  Transaction(
    categoryType: ItemCategoruType.grocery,
    transactionType: TransactionType.outflow,
    itemCategoryName: "Food",
    itemName: "Chicken Bing",
    amount: "\$15,500,00",
    date: "Oct, 15",
  ),
];

const userdata = UserInfo(
  name: 'Kyo',
  totalBalance: '\$4,586,00',
  inflow: '\$4,000,00',
  outflow: '\$2,000,00',
  transactions: transactions,
  transactions2: transactions2,
);
