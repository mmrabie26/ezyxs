import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReplicateOneAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final String imagePath;
  const ReplicateOneAppBar({
    required this.title,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CircleAvatar(child: SvgPicture.asset("assets/images/person.png"),),
      title: Column(
        children: 
        [
          Text("Welcome Back"),
          Text(title),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
