import 'package:e_commerce/features/personalization/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProfileScreen()),
      child: ListTile(
        leading: const TCircularImage(image: TImages.user1, height: 50, width: 50, padding: 0),
        title: Text("Sofie", style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
        subtitle: Text("Sofie236@gmail.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
        trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit,color: TColors.white),),
      ),
    );
  }
}