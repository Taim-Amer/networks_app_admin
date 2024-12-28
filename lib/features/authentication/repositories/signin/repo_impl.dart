import 'package:get/get.dart';
import 'package:networks_app_admin/features/authentication/models/all_users_model.dart';
import 'package:networks_app_admin/features/authentication/models/signin_model.dart';
import 'package:networks_app_admin/features/authentication/repositories/signin/repo.dart';
import 'package:networks_app_admin/utils/api/dio_helper.dart';
import 'package:networks_app_admin/utils/constants/api_constants.dart';

class SigninRepositoryImpl implements SigninRepository {
  static SigninRepositoryImpl get instance => Get.find();

  @override
  Future<SigninModel> signin(
      {required String email, required String password}) async {
    final dioHelper = TDioHelper();
    return await dioHelper
        .post(TApiConstants.signin, data: {"email": email, "password": password})
        .then((response) => SigninModel.fromJson(response));
  }

  @override
  Future<AllUsersModel> getAllUsers() async{
    final dioHelper = TDioHelper();
    return await dioHelper.get(TApiConstants.allUsers).then((response) => AllUsersModel.fromJson(response));
  }
}
