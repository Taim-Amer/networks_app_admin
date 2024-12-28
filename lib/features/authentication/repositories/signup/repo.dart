import 'package:networks_app_admin/features/authentication/models/signup_model.dart';

abstract class SignupRepository {
  Future<SignupModel> signup({required String name, required String email, required String password, required String passwordConfirmation});
}