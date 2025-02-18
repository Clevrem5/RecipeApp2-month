import 'package:flutter/material.dart';
import 'package:recipe2/categoryPage/presentation/pages/button_appbar.dart';
import 'package:recipe2/core/colors/colors.dart';

class CategoryPageNav extends StatelessWidget {
  const CategoryPageNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 280,
          height: 56,
          decoration: BoxDecoration(
            color: RecipeColors.buttonColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonAppbar(
                image: "assets/svg/home.svg",
                callback: () {},
                width: 25,
                height: 22,
              ),
              ButtonAppbar(
                image: "assets/svg/community.svg",
                callback: () {},
                width: 25,
                height: 22,
              ),
              ButtonAppbar(
                image: "assets/svg/categories.svg",
                callback: () {},
                width: 25,
                height: 22,
              ),
              ButtonAppbar(
                image: "assets/svg/profile.svg",
                callback: () {},
                width: 25,
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
