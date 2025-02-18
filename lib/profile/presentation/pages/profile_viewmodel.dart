import 'package:flutter/material.dart';
import 'package:recipe2/profile/data/models/profile_models.dart';
import 'package:recipe2/profile/data/repositories/profile_repositories.dart';

class ProfileViewModel extends ChangeNotifier{
  ProfileViewModel({required ProfileAppbarRepository repo}):_profileRepo=repo{
    load();
  }
  final ProfileAppbarRepository _profileRepo;

  ProfileAppbarModel? myProfile;


  Future load() async{
    myProfile= await _profileRepo.fetchMyProfile();
    notifyListeners();

  }


}
