import 'package:app_suntec/theme/app_theme.dart';
import 'package:app_suntec/ui/screen/components_home/category_widget.dart';
import 'package:app_suntec/ui/screen/components_home/product_card_widget.dart';
import 'package:app_suntec/ui/screen/details_screen.dart';
import 'package:flutter/material.dart';
import '../../model/model_products.dart';
import '../screen/components_home/search_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
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
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0))),
            ),
            ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                      itemindex: index,
                      product: products[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      product: products[index],
                                    )));
                      },
                    ))
          ],
        ))
      ],
    );
  }
}
