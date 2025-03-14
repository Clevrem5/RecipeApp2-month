import 'package:flutter/material.dart';
import 'package:recipe2/categoryPage/presentation/widgets/category_page_nav.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/profile/presentation/pages/profile_body.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';
import 'package:recipe2/profile/presentation/pages/profile_page_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) {
        if (vm.myProfile == null) {
          return Center(child: CircularProgressIndicator()); //
        }
        return SafeArea(
          child: Scaffold(
            backgroundColor: RecipeColors.backRoundColor,
            extendBody: true,
            appBar: ProfilePageAppBar(vm: vm),
            body: ProfileBody(vm: vm),
            bottomNavigationBar: RecipeBottomNav(),
          ),
        );
      },
    );
  }
}
