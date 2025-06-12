import 'package:file_picker/file_picker.dart';

abstract class PickFileFromLocal {
  Future<PlatformFile?> pickFile();
}