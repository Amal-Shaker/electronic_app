import 'package:electrical_store/models/product.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class ProductCart extends StatelessWidget {
  Product product;
  int ItemIndex;
  Function press;
  ProductCart({this.ItemIndex, this.product, this.press});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        //padding: EdgeInsets.all(kDefaultPadding),
        margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),

        height: 190,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 25),
                        blurRadius: 25,
                        color: Colors.black12)
                  ]),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  width: 200,
                  child: Image.asset(
                    this.product.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              bottom: 0,
              right: 0,
              height: 136,
              width: (MediaQuery.of(context).size.width) - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      this.product.title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      this.product.subTitle,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 4),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22)),
                      child: Text(
                        'السعر\$${this.product.price}',
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
