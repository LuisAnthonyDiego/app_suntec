import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.redAccent,
          ),
          child: Column(children: [
            //IMAGE
            ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset('assets/img/burger.png')),
            // NAME
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Burger', style: fontsTileT),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text('Burger', style: fontsTileST)
                  ]),
            ),
            //PRICE
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('12.0'),
                  Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4.0)),
                      child: const Icon(Icons.add))
                ],
              ),
            )
          ]),
        ));
  }
}
