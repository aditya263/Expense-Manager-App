import 'package:expense_manager_app/Model/CardModel.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  final CardModel card;

  const CardView(this.card, {Key? key}) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.1 / 2,
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(.8),
                              shape: BoxShape.circle),
                        ),
                        Transform.translate(
                          offset: const Offset(-15, 0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(.8),
                                shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(widget.card.currency +" ",
                            style:
                                const TextStyle(color: Colors.white, fontSize: 25)),
                        Text(widget.card.available.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.card.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 15,
                    ),
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Text(widget.card.number,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 10)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
