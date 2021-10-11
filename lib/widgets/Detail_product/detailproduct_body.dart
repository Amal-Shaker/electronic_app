import 'package:electrical_store/constant.dart';
import 'package:electrical_store/models/product.dart';
import 'package:electrical_store/widgets/Detail_product/colorDot.dart';
import 'package:flutter/material.dart';

class DetailProductBody extends StatelessWidget {
  Product product;
  DetailProductBody({this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 450,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              color: kBackgroundColor),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 3,
                        vertical: kDefaultPadding * 2),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Image.asset(
                      this.product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                        fillColor: Colors.black45,
                        isSelected: true,
                      ),
                      ColorDot(
                        fillColor: Colors.blue,
                        isSelected: false,
                      ),
                      ColorDot(
                        fillColor: Colors.red,
                        isSelected: false,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, bottom: 10),
                    child: Text(this.product.title),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      'السعر\$${this.product.price}',
                      style: TextStyle(
                          color: kSecondaryColor, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(this.product.description),
        )
      ],
    );
  }
}
