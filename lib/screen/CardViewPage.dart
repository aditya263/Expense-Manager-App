import 'package:expense_manager_app/Components/CardView.dart';
import 'package:expense_manager_app/Model/CardModel.dart';
import 'package:expense_manager_app/Providers/CardProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardViewPage extends StatefulWidget {
  final CardModel card;

  const CardViewPage({Key? key, required this.card}) : super(key: key);

  @override
  State<CardViewPage> createState() => _CardViewPageState();
}

class _CardViewPageState extends State<CardViewPage> {
  void onRemove(card) {
    Provider.of<CardProvider>(context,listen: false).removeCard(card);

    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        brightness: Brightness.light,
        title: const Text(
          "Card View",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios, color: Colors.black45, size: 20),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                onRemove(widget.card);
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.black45,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Transform.translate(
            offset: Offset.fromDirection(0, 15),
            child: Container(
              height: 210,
              child: CardView(widget.card),
            ),
          ),
        ),
      ),
    );
  }
}
