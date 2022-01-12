import 'package:expense_manager_app/Components/TransactionView.dart';
import 'package:expense_manager_app/Model/CardModel.dart';
import 'package:expense_manager_app/Components/CardView.dart';
import 'package:expense_manager_app/Model/TransactionModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        brightness: Brightness.light,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
        elevation: 0,
        centerTitle: true,
        leading: null,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black45,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 210,
                child: CardView(CardModel(
                    available: 5000,
                    name: 'MasterCard',
                    number: '1234 **** **** 8536',
                    currency: '\$',
                    id: 0,
                    bankName: '')),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Last Transactions",
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              const SizedBox(
                height: 15,
              ),
              TransactionView(
                transaction: TransactionModel(
                    name: 'Shopping',
                    price: 1000,
                    type: '-',
                    currency: '\$',
                    id: 0),
              ),
              TransactionView(
                transaction: TransactionModel(
                    name: 'Salary',
                    price: 3000,
                    type: '+',
                    currency: '\$',
                    id: 0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
