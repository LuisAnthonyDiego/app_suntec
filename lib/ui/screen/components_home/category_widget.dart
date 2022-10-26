import 'package:app_suntec/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['All', 'Alitas', 'Pollo', 'Pizzas', 'Hamburguesas'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0 / 2),
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (() {
            setState(() {
              selectedIndex = index;
            });
          }),
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: sDefaultPadding,
                right: index == categories.length - 1 ? sDefaultPadding : 0),
            padding: const EdgeInsets.symmetric(horizontal: sDefaultPadding),
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Colors.white.withOpacity(0.4)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6)),
            child: Text(
              categories[index],
              style: fontsCategory,
            ),
          ),
        ),
      ),
    );
  }
}
