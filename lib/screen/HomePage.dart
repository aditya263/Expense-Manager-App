import 'package:expense_manager_app/Components/CardList.dart';
import 'package:expense_manager_app/Components/TransactionView.dart';
import 'package:expense_manager_app/Model/CardModel.dart';
import 'package:expense_manager_app/Components/CardView.dart';
import 'package:expense_manager_app/Model/TransactionModel.dart';
import 'package:expense_manager_app/Providers/CardProvider.dart';
import 'package:expense_manager_app/screen/AddCardPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Provider.of<CardProvider>(context).initialState();

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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddCardPage()));
                },
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
                (Provider.of<CardProvider>(context).getCardlength() > 0
                    ? Container(
                        height: 210,
                        child: Consumer<CardProvider>(
                          builder: (context, cards, child) => CardList(
                            cards: cards.allCards,
                          ),
                        ))
                    : Container(
                        height: 210,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Add your new card click the \n + \n button in the top right.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )),
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
        ));
  }
}
