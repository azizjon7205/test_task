import 'package:file_picker/file_picker.dart';

import 'pick_file_from_local.dart';

class PickFileFromLocalImpl extends PickFileFromLocal {
  @override
  Future<PlatformFile?> pickFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
      );
      if (result == null || result.files.isEmpty == true) return null;

      return result.files.single;
    } catch (e) {
      throw Exception('Error selecting file: $e');
    }
  }
}
