import 'package:flutter/material.dart';
import 'package:to_do/src/shared/resources/app_assets.dart';
import 'package:to_do/src/shared/theme/app_theme/custom_icons.dart';
import 'package:to_do/src/shared/widgets/custom_clipper.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppCustomClipper(),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary // Cor do contêiner
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(
                        'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg'),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Hello Marta!',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.onPrimary),
                  )
                ],
              ),
              CustomIcon(
                  path: AppAssets.settings,
                  size: 36,
                  color: Theme.of(context).colorScheme.onPrimary),
            ],
          ),
        ),
      ),
    );
  }
}
