import 'package:recipe2/core/client.dart';
import 'package:recipe2/profile/data/models/ProfileBodyModel.dart';
import 'package:recipe2/profile/data/models/profile_models.dart';

class ProfileAppbarRepository{
  ProfileAppbarRepository({required this.client});
  final ApiClient client;

  ProfileAppbarModel? myProfile;
  List<ProfileBodyModel> _myRecipe = [];

  Future<ProfileAppbarModel?>fetchMyProfile()async{
    if (myProfile!=null) return myProfile;
    var rawProfile=await client.fetchMyProfile();
    print("${rawProfile}");
    myProfile=ProfileAppbarModel.fromJson(rawProfile);
    return myProfile;
  }

  Future<List<ProfileBodyModel>?> fetchRecipeProfile() async {
    if (_myRecipe.isNotEmpty) {
      return _myRecipe;
    } else if (_myRecipe.isEmpty) {
      print("kelmadi body ${_myRecipe}");
      return [];
    } else {
      var rawBody = await client.fetchProfileRecipes();
      _myRecipe = rawBody.map((e) => ProfileBodyModel.fromJson(e)).toList();
      print("keldi body ${rawBody}");
      return _myRecipe;
    }
  }
}