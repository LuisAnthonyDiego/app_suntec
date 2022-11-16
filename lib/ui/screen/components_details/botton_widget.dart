import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class BottonDetails extends StatelessWidget {
  const BottonDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Positioned(
      right: 20.0,
      bottom: 20.0,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: sDefaultPadding * 1.5, vertical: sDefaultPadding / 2),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(8)),
        child: Text(
          'Editar',
          style: fontsPrice,
        ),
      ),
    );
  }
}
