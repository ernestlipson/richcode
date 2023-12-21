import 'package:flutter/material.dart';

class CardTitleCard extends StatelessWidget {
  const CardTitleCard(
      {super.key,
      this.title = "r/CorronaVirus",
      this.assetImage = "assets/cover-image.jpg",
      this.onTrailingPressed,
      this.ontap});
  final String title;
  final String assetImage;
  final Function()? onTrailingPressed;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: CircleAvatar(
        backgroundImage: AssetImage(assetImage),
      ),
      title: Text(title,
      ),
      trailing: GestureDetector(
          onTap: onTrailingPressed, child: const Icon(Icons.more_vert)),
    );
  }
}
