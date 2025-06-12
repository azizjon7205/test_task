import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/ui/bloc/ui_bloc.dart';
import '/ui/bloc/ui_event.dart';
import '/ui/bloc/ui_state.dart';
import 'card_file_info.dart';
import 'card_initial_section.dart';
import 'upload_file_button.dart';

class UploadFileCard extends StatelessWidget {
  const UploadFileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          radius: const Radius.circular(16.0),
          dashPattern: const [7.5, 4],
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
          child: BlocBuilder<UiBloc, UiState>(
            builder:
                (context, state) =>
                    state.isLoading
                        ? const SizedBox(
                          height: 48.0,
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFF5669FF),
                            ),
                          ),
                        )
                        : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            state.fileInfo != null
                                ? FileInfoCard(fileInfo: state.fileInfo!)
                                : const InitialCardSection(),
                            const SizedBox(height: 32.0),
                            UploadFileButton(
                              title:
                                  state.fileInfo != null
                                      ? 'Upload file again'
                                      : 'Upload file',
                              onUploadFileTap: () {
                                context.read<UiBloc>().add(OnUploadFile());
                              },
                            ),
                          ],
                        ),
          ),
        ),
      ),
    );
  }
}
