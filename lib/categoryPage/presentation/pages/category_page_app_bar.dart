import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe2/categoryPage/presentation/pages/button_appbar.dart';
import 'package:recipe2/core/colors/colors.dart';

class CategoryPageAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CategoryPageAppBar({
    super.key,
  });
@override
  Size get preferredSize => Size(double.infinity, 70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 102,
      leading: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: SizedBox(
          height: 14,
          width: 21,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/svg/vector.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        "Categories",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            spacing: 5,
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: RecipeColors.iconColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: ButtonAppbar(
                  image: "assets/svg/notification.svg",
                  callback: () {},
                  width: 12,
                  height: 17,
                ),
              ),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: RecipeColors.iconColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: ButtonAppbar(
                  image: "assets/svg/search.svg",
                  callback: () {},
                  width: 14,
                  height: 19,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
