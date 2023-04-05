import 'package:assigment_menu_list/OrderList.dart';
import 'package:flutter/material.dart';
import 'package:assigment_menu_list/MenuFile.dart';

import 'main.dart';

class OrderSummary extends StatefulWidget {
  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Order Summary"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          height: 600,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Item Ordered : ${Variable.daftarMenu}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Total Amount : \$ ${Variable.total}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      "Note : ${NameFile.NoteString}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      "Amount Ordered : ${Variable.InpJumlah}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(180, 60),
                    ),
                    onPressed: () => {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderList()));
                      })
                    },
                    child: Text("Back"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(180, 60),
                    ),
                    onPressed: () => {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      })
                    },
                    child: Text("Finish"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
