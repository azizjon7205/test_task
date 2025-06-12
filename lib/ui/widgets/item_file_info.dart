import 'package:flutter/material.dart';

class FileInfoItem extends StatelessWidget {
  const FileInfoItem({super.key, required this.label, required this.info});

  final String label;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        Text(
          "$label: ",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Text(
            info,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
