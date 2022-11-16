import 'package:app_suntec/model/model_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:app_suntec/theme/app_theme.dart';
import 'package:app_suntec/ui/widget/details_body.dart';

import 'components_details/botton_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        leading: IconButton(
          padding: const EdgeInsets.only(left: sDefaultPadding),
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        title: Text('Details Screen'.toUpperCase(), style: fontsTitle),
      ),
      body: Stack(children: [
        DetailsBody(
          product: product,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const BottonDetails()
      ]),
    );
  }
}
