import 'dart:developer';
import 'package:bankjateng/view/menu/layanan.dart';
import 'package:bankjateng/view/menu/pengaduan.dart';
import 'package:bankjateng/view/menu/produk.dart';
import 'package:bankjateng/view/menu/promo.dart';
import 'package:bankjateng/view/menu/simulasi.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    log("$tabIndex");
    update();
  }

  List<Widget> listContent = <Widget>[
    Layanan(),
    Pengaduan(),
    Produk(),
    Simulasi(),
    Promo()
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
