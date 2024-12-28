import 'package:networks_app_admin/features/operations/models/file_operations_model.dart';
import 'package:networks_app_admin/features/operations/models/user_operations_model.dart';

abstract class OperationsRepo{
  Future<FileOperationsModel> getFileOperations({required int fileID});
  Future<UserOperationsModel> getUserOperations({required int userID, required groupID});
}