import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe2/core/colors/colors.dart';

class ProfilePageAppBar extends StatelessWidget implements PreferredSizeWidget{
  const ProfilePageAppBar({
    super.key,
  });
  @override
  Size get preferredSize => Size(double.infinity, 102);

  @override
  Widget build(BuildContext context) {
    return AppBar();

  }
}
