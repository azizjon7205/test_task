import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InitialCardSection extends StatelessWidget {
  const InitialCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.0,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 36,
          width: 36,
          child: SvgPicture.asset('assets/icons/ic_folder.svg'),
        ),
        Text(
          'Upload your file here',
          style: TextStyle(
            color: const Color(0xFF888693),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 24 / 16,
          ),
        ),
      ],
    );
  }
}
