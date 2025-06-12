import '/domain/entities/file_info.dart';

abstract class UploadFileRepository {
  Future<FileInfo?> uploadFile({int maxInBytes});
}
