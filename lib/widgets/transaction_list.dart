import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't001',
      title: 'New Shoes',
      amount: 6.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't002',
      title: 'Socks',
      amount: 2.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map(
        (tx) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${tx.amount}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      tx.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat().format(tx.date),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
