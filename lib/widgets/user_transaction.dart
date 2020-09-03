import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
   final List<Transaction> _userTranscations = [
    Transaction(
      id: '1',
      title: 'New Shoes',
      amount: 73.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Gloves',
      amount: 12.99,
      date: DateTime.now(),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(userTranscations: _userTranscations,),
      ],
    );
  }
}
