import 'package:flutter/material.dart';

import '/domain/entities/file_info.dart';
import 'item_file_info.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({super.key, required this.fileInfo});

  final FileInfo fileInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "File info",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12.0),

        FileInfoItem(label: "Name", info: fileInfo.name),
        SizedBox(height: 8.0),
        FileInfoItem(label: "Size", info: fileInfo.size),
        SizedBox(height: 8.0),
        FileInfoItem(label: "Type", info: fileInfo.type),
      ],
    );
  }
}
