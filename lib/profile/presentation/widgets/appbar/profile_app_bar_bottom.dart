import 'package:flutter/material.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';
import 'package:recipe2/profile/presentation/widgets/appbar/appbar_inform.dart';
import 'package:recipe2/profile/presentation/widgets/bottom/bottom_elevated_button.dart';

class ProfileAppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBarBottom({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Size get preferredSize => const Size(double.infinity, 130);

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return DefaultTabController(
      length: 2, // Ikkita tab bo‘lgani uchun
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BottomElevatedButton(
                text: "Edit Profile",
                callback: () {},
              ),
              const SizedBox(width: 5), // `spacing` ishlamaydi, shuning uchun `SizedBox`
              BottomElevatedButton(
                text: "Share Profile",
                callback: () {},
              ),
            ],
          ),
          Container(
            width: 356 * AppSizes.wratio,
            height: 49.57 * AppSizes.hRatio,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: RecipeColors.iconColor,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppbarInform(
                  number: vm.myProfile!.recipeCount,
                  label: "Recipes",
                ),
                Container(width: 1, height: 26, color: RecipeColors.iconColor),
                AppbarInform(
                  number: vm.myProfile!.followingCount,
                  label: "Following",
                ),
                Container(width: 1, height: 26, color: RecipeColors.iconColor),
                AppbarInform(
                  number: vm.myProfile!.followerCount,
                  label: "Followers",
                ),
              ],
            ),
          ),
          SizedBox(height: 25,
            width: 430,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white, // Tanlangan tab rangini berish
              unselectedLabelColor: Colors.white, // Tanlanmagan tab rangi
              indicatorColor: RecipeColors.buttonColor,
              splashBorderRadius: BorderRadius.circular(10),// Chiziq rangini o‘zgartirish
              tabs: const [
                Tab(text: "Recipe"), // `Tab` ichida `text` bo‘lishi kerak
                Tab(text: "Favorites"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
