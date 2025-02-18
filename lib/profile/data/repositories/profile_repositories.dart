import 'package:recipe2/core/client.dart';
import 'package:recipe2/profile/data/models/profile_models.dart';

class ProfileAppbarRepository{
  ProfileAppbarRepository({required this.client});
  final ApiClient client;

  ProfileAppbarModel? myProfile;

  Future<ProfileAppbarModel?>fetchMyProfile()async{
    if (myProfile!=null) return myProfile;
    var rawProfile=await client.fetchMyProfile();
    print("${rawProfile}");
    myProfile=ProfileAppbarModel.fromJson(rawProfile);
    return myProfile;
  }


}