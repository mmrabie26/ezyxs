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
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),

      child: AppBar(
        leading: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
          child: const CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xFF2E80BA),
            child: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage("assets/images/person.jpg"),
            
          ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Image.asset("assets/images/hand.png"),
              ],
            ),
            Text(
              title,
              style:const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/heart.svg"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/bell.svg"),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
