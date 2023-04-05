import 'package:assigment_menu_list/MenuFile.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'OrderList.dart';

class MenuHome extends StatefulWidget {
  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  List<menuDataList> MenuList = getMenuList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Home Menu"),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                //nasgor
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: MenuList[0]
                            .menuList
                            .map(
                              (menu) => Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(300, 50)),
                                  ),
                                  child: Text(menu.MenuText),
                                  onPressed: () => setState(() {
                                    Variable.daftarMenu = menu.MenuText;
                                    Variable.harga = menu.Harga;

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OrderList()));
                                  }),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                ),
                //nasi ayam
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: MenuList[1]
                            .menuList
                            .map(
                              (menu) => Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(300, 50)),
                                  ),
                                  child: Text(menu.MenuText),
                                  onPressed: () => setState(() {
                                    Variable.daftarMenu = menu.MenuText;
                                    Variable.harga = menu.Harga;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OrderList()));
                                  }),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                ),
                //Sapi
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: MenuList[2]
                            .menuList
                            .map(
                              (menu) => Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(300, 50)),
                                  ),
                                  child: Text(menu.MenuText),
                                  onPressed: () => setState(() {
                                    Variable.daftarMenu = menu.MenuText;
                                    Variable.harga = menu.Harga;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OrderList()));
                                  }),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                ),
                //sayur
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: MenuList[3]
                            .menuList
                            .map(
                              (menu) => Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(300, 50)),
                                  ),
                                  child: Text(menu.MenuText),
                                  onPressed: () => setState(() {
                                    Variable.daftarMenu = menu.MenuText;
                                    Variable.harga = menu.Harga;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OrderList()));
                                  }),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                ),
                //sup
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: MenuList[4]
                            .menuList
                            .map(
                              (menu) => Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(300, 50)),
                                  ),
                                  child: Text(menu.MenuText),
                                  onPressed: () => setState(() {
                                    Variable.daftarMenu = menu.MenuText;
                                    Variable.harga = menu.Harga;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OrderList()));
                                  }),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: MenuList[4]
                            .menuList
                            .map(
                              (menu) => Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(300, 50)),
                                  ),
                                  child: Text(menu.MenuText),
                                  onPressed: () => setState(() {
                                    Variable.daftarMenu = menu.MenuText;
                                    Variable.harga = menu.Harga;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OrderList()));
                                  }),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: MenuList[5]
                            .menuList
                            .map(
                              (menu) => Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    fixedSize: MaterialStateProperty.all(
                                        Size(300, 50)),
                                  ),
                                  child: Text(menu.MenuText),
                                  onPressed: () => setState(() {
                                    Variable.daftarMenu = menu.MenuText;
                                    Variable.harga = menu.Harga;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OrderList()));
                                  }),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
