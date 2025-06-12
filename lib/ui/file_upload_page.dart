import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/utils/injections.dart';
import '/ui/bloc/ui_bloc.dart';
import '/ui/widgets/card_upload_file.dart';

class FileUploadPage extends StatelessWidget {
  const FileUploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Upload File"), centerTitle: true),
      body: BlocProvider(
        create: (context) => UiBloc(getIt()),
        child: Center(child: const UploadFileCard()),
      ),
    );
  }
}
