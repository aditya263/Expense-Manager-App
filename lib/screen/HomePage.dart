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
                child: AspectRatio(
                  aspectRatio: 3.1 / 2,
                  child: GestureDetector(
                    child: Container(
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
                                            color:
                                                Colors.orange.withOpacity(.8),
                                            shape: BoxShape.circle),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text("\$",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25)),
                                    Text("1000",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Card Name",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 15,
                                ),
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text("1234 5678 1234 5678",
                                      style: TextStyle(
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
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Last Transactions",
                style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 15)
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.arrow_upward,color: Colors.red,),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Shopping',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text('- \$120',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.arrow_downward,color: Colors.green,),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Transfer',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text('+ \$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.arrow_upward,color: Colors.red,),
                        SizedBox(
                          width: 10,
                        ),
                        Text('House Rent',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text('- \$500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.arrow_downward,color: Colors.green,),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Salary',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text('+ \$1200',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
