import 'package:test_task/domain/entities/file_info.dart';

class UiState {
  bool isLoading;
  String errorMessage;
  FileInfo? fileInfo;

  UiState({this.isLoading = false, this.errorMessage = "", this.fileInfo});

  UiState copyWith({
    bool? isLoading,
    String? errorMessage,
    required FileInfo? fileInfo,
  }) {
    return UiState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      fileInfo: fileInfo,
    );
  }
}
