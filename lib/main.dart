import 'package:flutter/material.dart';
import 'package:recipe2/categoryPage/data/repository/category_repo.dart';
import 'package:recipe2/categoryPage/presentation/pages/category_view.dart';
import 'package:recipe2/categoryPage/presentation/pages/category_viewmodel.dart';
import 'package:recipe2/core/Sizes.dart';
import 'package:recipe2/core/client.dart';
import 'package:recipe2/core/colors/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
        appBarTheme: AppBarTheme(
          foregroundColor: RecipeColors.smallColor,
          backgroundColor: RecipeColors.backRoundColor,
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 102 * AppSizes.hRatio,
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: RecipeColors.backRoundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: CategoryPage(
        vm: CategoryViewModel(
          repo: CategoryRepository(
            client: ApiClient(),
          ),
        ),
      ),
    );
  }
}
