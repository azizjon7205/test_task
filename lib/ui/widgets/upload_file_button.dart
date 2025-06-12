import 'package:flutter/material.dart';

class UploadFileButton extends StatelessWidget {
  const UploadFileButton({
    super.key,
    required this.onUploadFileTap,
    required this.title,
  });

  final VoidCallback? onUploadFileTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onUploadFileTap,
      clipBehavior: Clip.hardEdge,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(0, 0),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        backgroundColor: Color(0xFF5669FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          height: 23 / 15,
        ),
      ),
    );
  }
}
