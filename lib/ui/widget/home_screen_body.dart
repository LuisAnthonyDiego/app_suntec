import 'package:app_suntec/theme/app_theme.dart';
import 'package:app_suntec/ui/screen/components/category_widget.dart';
import 'package:app_suntec/ui/screen/components/product_card_widget.dart';
import 'package:flutter/material.dart';
import '../../model/model_products.dart';
import '../screen/components/search_widget.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        const CategoryList(),
        const SizedBox(
          height: sDefaultPadding / 2,
        ),
        Expanded(
            child: Stack(
          children: [
            // Background
            Container(
              margin: const EdgeInsets.only(top: 70.0),
              decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0))),
            ),
            ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                      itemindex: index,
                      product: products[index],
                    ))
          ],
        ))
      ],
    );
  }
}
