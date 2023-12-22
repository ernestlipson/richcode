import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails(
      {super.key,
      this.assetImage = "assets/cover-image.jpg",
      required this.title,
      required this.subText});
  final String assetImage;
  final String title;
  final String subText;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(assetImage)),
      titleAlignment: ListTileTitleAlignment.top,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.normal, fontSize: 14),
      ),
      subtitle: Text(
        subText,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}
