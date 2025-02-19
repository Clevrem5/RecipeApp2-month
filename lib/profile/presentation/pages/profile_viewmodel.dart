import 'package:flutter/material.dart';
import 'package:recipe2/categoryPage/data/repository/category_repo.dart';
import 'package:recipe2/profile/data/models/ProfileBodyModel.dart';
import 'package:recipe2/profile/data/models/profile_models.dart';
import 'package:recipe2/profile/data/repositories/profile_repositories.dart';

import '../../../categoryPage/data/models/category_model.dart';

class ProfileViewModel extends ChangeNotifier{
  ProfileViewModel({required ProfileAppbarRepository repo}):_profileRepo=repo{
    load();
  }
  final ProfileAppbarRepository _profileRepo;

  ProfileAppbarModel? myProfile;
  List<ProfileBodyModel> recipes=[];



  Future load() async {
    try {
      myProfile = await _profileRepo.fetchMyProfile();
      recipes = await _profileRepo.fetchRecipeProfile() ?? [];
      notifyListeners();
    } catch (e) {
      debugPrint("Error in load(): $e");
    }
  }



}

// List<CategoryRepository> category=[];
// CategoryModel? mainCategory;

// Shuni tekshirish kerak
// var allCategories = await _profileRepo.fetchCategories();
// mainCategory = allCategories.where((category) => category.main).firstOrNull;
// category = allCategories
//     .where((category) => category.id != mainCategory?.id)
//     .cast<CategoryRepository>()
//     .toList();