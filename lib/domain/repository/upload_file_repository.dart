import 'package:test_task/domain/entities/file_info.dart';

abstract class UploadFileRepository {
  Future<FileInfo?> uploadFile({int maxInBytes});
}