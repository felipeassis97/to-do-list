import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final String path;
  final Color? color;
  final double? size;
  const CustomIcon({Key? key, required this.path, this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SvgPicture.asset(
        height: size ?? 25,
        width: size ?? 25,
        path,
        colorFilter: ColorFilter.mode(
            color ?? Theme.of(context).colorScheme.onBackground,
            BlendMode.srcIn),
      ),
    );
  }
}
