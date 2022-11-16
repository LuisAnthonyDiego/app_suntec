import 'package:app_suntec/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../model/model_products.dart';
import '../screen/components_details/product_image_widget.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: sDefaultPadding),
          decoration: const BoxDecoration(
              color: AppTheme.primary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductPoster(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: sDefaultPadding / 7),
                child: Text(
                  product.title,
                  style: fontsTitleCard,
                ),
              ),
              Text(product.category, style: fontsPrice),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: sDefaultPadding / 2),
                child: Text(
                  product.description,
                  style: fontsDetailsDescription,
                ),
              ),
              const SizedBox(
                height: sDefaultPadding,
              )
            ],
          ),
        )
      ],
    );
  }
}
