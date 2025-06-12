import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/utils/messages.dart';
import '../../domain/repository/upload_file_repository.dart';
import 'ui_event.dart';
import 'ui_state.dart';

class UiBloc extends Bloc<UiEvent, UiState> {
  final UploadFileRepository _fileRepository;

  UiBloc(this._fileRepository) : super(UiState()) {
    on<OnUploadFile>(_onUploadFile);
  }

  void _onUploadFile(OnUploadFile event, Emitter<UiState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: "", fileInfo: null));

    try {
      final response = await _fileRepository.uploadFile();
      if (response != null) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: "",
            fileInfo: response,
          ),
        );
        showSuccessMessage("You have successfully uploaded a file!");
      } else {
        emit(
          state.copyWith(isLoading: false, errorMessage: "", fileInfo: null),
        );
      }
    } catch (e) {
      showErrorMessage(e.toString());
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: e.toString(),
          fileInfo: null,
        ),
      );
    }
  }
}
