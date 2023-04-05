import 'package:assigment_menu_list/Home.dart';
import 'package:assigment_menu_list/MenuFile.dart';
import 'package:assigment_menu_list/OrderSummary.dart';
import 'package:assigment_menu_list/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

//Text("Order List ; ${Variable.daftarMenu}"),
class _OrderListState extends State<OrderList> {
  var inputController = TextEditingController();
  var inputControllerItem = TextEditingController();
  void onTyped(String InpVal) {
    setState(() {
      NameFile.NoteString = InpVal;
    });
  }

  void onTypedItem(double InpItemVal) {
    setState(() {
      Variable.InpJumlah = InpItemVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Order Page"),
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
                    "Order Price / 1 Item : \$ ${Variable.harga}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 500,
                    child: TextField(
                      controller: inputController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        labelText: 'Add Notes',
                      ),
                      onSubmitted: onTyped,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 500,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: inputControllerItem,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        labelText: 'Item Amount',
                      ),
                      onSubmitted: (value) {
                        onTypedItem(double.parse(value));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(180, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        onTyped(inputController.text);
                        onTypedItem(double.parse(inputControllerItem.text));
                        Variable.total = Variable.harga * Variable.InpJumlah;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderSummary()));
                      });
                    },
                    child: Text("Order Summary"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(180, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        inputController.clear();
                        inputControllerItem.clear();
                      });
                    },
                    child: Text("Clear Order"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(180, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuHome()));
                      });
                    },
                    child: Text("Back"),
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
