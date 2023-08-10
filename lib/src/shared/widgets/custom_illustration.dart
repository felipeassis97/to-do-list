import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIllustration extends StatelessWidget {
  final String path;
  final double? size;
  const CustomIllustration({Key? key, required this.path, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SvgPicture.asset(
        height: size,
        width: size,
        path,
      ),
    );
  }
}
