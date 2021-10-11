import 'package:electrical_store/constant.dart';
import 'package:electrical_store/screens/detail_screen.dart';
import 'package:electrical_store/widgets/Home/productcart.dart';
import 'package:electrical_store/widgets/product/productList.dart';
import 'package:flutter/material.dart';
import 'package:electrical_store/models/product.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductCart(
                          ItemIndex: index,
                          product: products[index],
                          press: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(products[index])));
                          },
                        ))
              ],
            ))
          ],
        ));
  }
}
