import 'package:bankjateng/utils/assets.dart';
import 'package:bankjateng/utils/small_text.dart';
import 'package:bankjateng/view/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../utils/big_text.dart';
import '../../utils/color.dart';
import '../../utils/dimension.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {

  List itemName =[ "TSBN Ritel", "Bayar Pajaknya", "Promo KPR", "Deposito Ritel"];

   List foto =[
    tabunganbima,  kreditlapak, kreditdigital, bimapedagang
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Dimension.height20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
               padding:  EdgeInsets.symmetric(horizontal: Dimension.width15),
                child: Container(),
              ),
              BigText(text: "Promo"),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: Dimension.width15),
                child: Icon(Symbols.notifications, color:AppColors.theme,),
              )
            ],
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in each row
              mainAxisSpacing: 8.0, // spacing between rows
              crossAxisSpacing: 8.0, // spacing between columns
            ),
            padding: const EdgeInsets.all(8.0), // padding around the grid
            itemCount: itemName.length, // total number of items
            itemBuilder: (context, index) {
              return Container(
               // color of grid items
                child: Column(
                  children: [
                    Image(
                      height: Dimension.height10*15,
                      image: AssetImage(foto[index])),
                    SmallText(text: itemName[index])
                  ],
                )
              );
            },
          ))

        ],
      ),
    );
  }
}