import '/core/utils/formatters.dart';
import '/domain/entities/file_info.dart';
import '/domain/repository/upload_file_repository.dart';
import '../local/pick_file_from_local.dart';

class UploadFileRepositoryImpl extends UploadFileRepository {
  final PickFileFromLocal _fileFromLocal;

  UploadFileRepositoryImpl(this._fileFromLocal);

  @override
  Future<FileInfo?> uploadFile({int maxInBytes = 10 * 1024 * 1024}) async {
    try {
      final file = await _fileFromLocal.pickFile();
      if (file != null) {
        if (file.size > maxInBytes) {
          throw Exception(
            'File size exceeds 10 MB limit. Selected file is ${Formatters.formatBytes(file.size)}.',
          );
        }

        return FileInfo(
          name: file.name,
          size: Formatters.formatBytes(file.size),
          type: file.extension ?? '',
        );
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
