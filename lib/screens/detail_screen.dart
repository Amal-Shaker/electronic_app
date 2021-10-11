import 'package:electrical_store/constant.dart';
import 'package:electrical_store/models/product.dart';
import 'package:electrical_store/widgets/Detail_product/detailproduct_body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  Product product;
  DetailScreen(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailAppBar(context),
      body: DetailProductBody(
        product: this.product,
      ),
    );
  }
}

AppBar detailAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    centerTitle: false,
    elevation: 0,
    title: Text(
      'رجوع',
      style: Theme.of(context).textTheme.bodyText2,
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
    ),
  );
}
