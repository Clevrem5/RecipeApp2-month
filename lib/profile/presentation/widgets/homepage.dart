import 'package:flutter/material.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/colors/colors.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';
import 'package:recipe2/profile/presentation/widgets/bottom_Items.dart';

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
        return Scaffold(
          backgroundColor: RecipeColors.backRoundColor,
          extendBody: true,
          appBar: AppBar(
            backgroundColor: RecipeColors.backRoundColor,
            surfaceTintColor: Colors.transparent,
            leadingWidth: 102 * AppSizes.wratio,
            toolbarHeight: 102 * AppSizes.hRatio,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(51),
              child: Image.network(vm.myProfile!.image),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vm.myProfile!.userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          body: Placeholder(),
          // body: Stack(
          //   children: [
          //     ProfileBody(viewModel: vm), // Asosiy content
          //     Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Container(
          //         width: double.infinity,
          //         height: 126,
          //         decoration: BoxDecoration(
          //           gradient: LinearGradient(
          //             colors: [
          //               Colors.black.withOpacity(0.7), // Gradient effektni kuchaytirish
          //               Colors.transparent,
          //             ],
          //             begin: Alignment.bottomCenter,
          //             end: Alignment.topCenter,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          bottomNavigationBar: BottomNavProfile(),
        );
      },
    );
  }
}
