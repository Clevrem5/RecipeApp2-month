import 'package:flutter/material.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';

import '../widgets/body/profile_body_stack_items.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) => Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 31,
          right: 32,
        ),
        child: Align(
          alignment: Alignment.center,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 35,
              crossAxisSpacing: 27,
              mainAxisExtent: 226,
            ),
            itemCount: vm.recipes.length,
            itemBuilder: (context, index) => ProfileBodyStackItems(
              title: vm.recipes[index].title,
              bio: vm.recipes[index].description,
              image: vm.recipes[index].image,
              rating: vm.recipes[index].rating,
              time: vm.recipes[index].timeRequired,
            ),
          ),
        ),
      ),
    );
  }
}
