import 'package:networks_app_admin/features/authentication/models/refresh_model.dart';

abstract class RefreshRepository{
  Future<RefreshModel> refresh();
}