import 'package:expense_manager_app/Model/TransactionModel.dart';
import 'package:flutter/material.dart';

class TransactionView extends StatefulWidget {
  final TransactionModel transaction;

  TransactionView({Key? key, required this.transaction}) : super(key: key);

  @override
  State<TransactionView> createState() => _TransactionViewState();
}

class _TransactionViewState extends State<TransactionView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              widget.transaction.type == "-"
                  ? const Icon(Icons.arrow_upward, color: Colors.red)
                  : const Icon(Icons.arrow_downward, color: Colors.green),
              const SizedBox(
                width: 10,
              ),
              Text(widget.transaction.name,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                  widget.transaction.type +
                      " " +
                      widget.transaction.currency +
                      widget.transaction.price.toString(),
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
