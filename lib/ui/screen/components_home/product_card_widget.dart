import 'package:flutter/material.dart';

import '../../../model/model_products.dart';
import '../../../theme/app_theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemindex,
    required this.product,
    required this.press,
  }) : super(key: key);
  final int itemindex;
  final Product product;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: sDefaultPadding,
        vertical: sDefaultPadding / 2,
      ),
      //color: Colors.amber,
      height: 160.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            //Shadow Container
            Container(
              height: 136.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color:
                      itemindex.isEven ? Colors.lightBlueAccent : Colors.amber,
                  boxShadow: const [sDefaultShadow]),
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.0)),
              ),
            ),
            // Product IMG
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: sDefaultPadding),
                  height: 160.0,
                  width: 200.0,
                  child: Image.asset(product.image, fit: BoxFit.cover),
                )),
            // TITLE PRODUCT CONTAINER
            Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  height: 136.0,
                  width: size.width - 200.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: sDefaultPadding),
                        child: Text(
                          product.title,
                          style: fontsTitleCard,
                        ),
                      ),
                      const Spacer(),
                      // CATEGORY CONTAINER
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: sDefaultPadding * 1.5,
                            vertical: sDefaultPadding / 4),
                        decoration: const BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(22.0),
                                topRight: Radius.circular(22.0))),
                        child: Text(
                          product.category,
                          style: fontsPrice,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
