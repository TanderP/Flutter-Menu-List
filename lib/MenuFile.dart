import 'dart:ffi';

import 'package:flutter/material.dart';
import 'Home.dart';

class menuDataList {
  final String menuText;
  final List<MenuFile> menuList;
  menuDataList(this.menuText, this.menuList, {Key? key});
}

class MenuFile {
  final String MenuText;
  final double Harga;
  MenuFile(this.MenuText, this.Harga, {Key? key});
}

List<menuDataList> getMenuList() {
  List<menuDataList> MenuList = [
    menuDataList(
      'Nasi Goreng',
      [
        MenuFile('Nasi Goreng Spesial', 40.0),
        MenuFile('Nasi Goreng Yang Chow', 40.0),
        MenuFile('Nasi Goreng Sapi', 40.0),
        MenuFile('Nasi Goreng Seafood', 40.0),
        MenuFile('Nasi Goreng Spesial', 40.0),
        MenuFile('Nasi Goreng Rendang', 40.0),
      ],
    ),
    menuDataList(
      'Ayam',
      [
        MenuFile('Ayam Goreng', 18.0),
        MenuFile('Ayam Hainan', 21.0),
        MenuFile('Ayam Rebus', 18.0),
        MenuFile('Ayam Bakar Padang', 24.0),
        MenuFile('Ayam Bakar Rendang', 24.0),
        MenuFile('Ayam Goreng Mentega', 21.0),
      ],
    ),
    menuDataList(
      'Sapi',
      [
        MenuFile('Steak Sapi', 24.0),
        MenuFile('Sapi Lada Hitam', 24.0),
        MenuFile('Sapi BBQ', 24.0),
        MenuFile('Sapi Goreng Tepung', 18.0),
        MenuFile('Bistik Sapi', 18.0),
        MenuFile('Steak Sapi Mozarella', 28.0),
      ],
    ),
    menuDataList(
      'Sayur',
      [
        MenuFile('Cah kangkung ', 8.0),
        MenuFile('Kangkung Saus Tiram', 10.0),
        MenuFile('Tahu 1 Porsi', 8.0),
        MenuFile('Tempe 1 Porsi', 8.0),
        MenuFile('Tahu & Tempe', 14.0),
        MenuFile('Jamur Crispy', 12.0),
      ],
    ),
    menuDataList(
      'Sup',
      [
        MenuFile('Sup Sirip Hiu', 35.0),
        MenuFile('Sup Jagung', 18.0),
        MenuFile('Sup Kepiting', 29.0),
        MenuFile('Sup Tomat', 15.0),
        MenuFile('Sup Kacang Hijau', 12.0),
        MenuFile('Sup Iga Babi', 26.0),
      ],
    ),
    menuDataList(
      'Softdrink',
      [
        MenuFile('Coca Cola', 8.0),
        MenuFile('Sprite', 8.0),
        MenuFile('Fanta', 8.0),
        MenuFile('Teh Botol', 8.0),
        MenuFile('Teh Manis', 8.0),
        MenuFile('Teh Pucuk', 8.0),
      ],
    ),
    menuDataList(
      'Dessert',
      [
        MenuFile('Es Cendol', 8.0),
        MenuFile('Es Campur', 8.0),
        MenuFile('Es Kelapa Muda', 8.0),
        MenuFile('Es Kelapa', 8.0),
        MenuFile('Es Kelapa Muda', 8.0),
        MenuFile('Es Kelapa', 8.0),
      ],
    ),
  ];
  return MenuList;
}

class Variable {
  static var index = 0;
  static String daftarMenu = "Null";
  static double harga = 0;
  static double InpJumlah = 0;
  static double total = 0;
}

class function {}
