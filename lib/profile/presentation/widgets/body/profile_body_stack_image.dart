import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';

import '../../../../core/colors/colors.dart';

class ProfileBodyStackImage extends StatelessWidget {
  const ProfileBodyStackImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 170,
          height: 153,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2), // ✅ Yorug‘roq soya
                blurRadius: 7,
                spreadRadius: 1,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
