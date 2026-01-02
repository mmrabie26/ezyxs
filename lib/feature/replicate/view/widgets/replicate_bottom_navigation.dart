import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:ezyxs/feature/replicate/view/replicate_two_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Bottom navigation widget with a centered circular reservation icon
/// Matching the provided screenshot: Home | My Reservation (center) | Profile
class ReplicateBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const ReplicateBottomNavigation({Key? key, this.currentIndex = 1, this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 12, color: Colors.grey[700]);
    final selectedTextStyle = TextStyle(
      fontSize: 12,
      color: Theme.of(context).primaryColor,
    );

    return ConvexAppBar(
      style: TabStyle.fixedCircle,
      backgroundColor: Colors.white,
      elevation: 6,
      height: 64,
      color: Colors.grey[600],
      items: [
        // Home
        TabItem(icon: Icon(Icons.home, size: 22), title: 'Home'),

        // Center reservation - small circular image and conditional label when selected
        TabItem(
          icon: GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ReplicateTwoView(),)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [Color(0xFF17C3A2), Color(0xFF2396D9)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.10), blurRadius: 6, offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/images/reservaion.png',
            
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.event, size: 20, color: Color(0xFF17C3A2)),
                    ),
                    ),
                  ),
                ),
                  Text(
                    'My Reservation',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
            ),
          ),
          title: '',
        ),

        // Profile
        TabItem(icon: Icon(Icons.person_outline, size: 22), title: 'Profile'),
      ],
      initialActiveIndex: currentIndex,
      onTap: (i) => onTap?.call(i),
    );
  }
}
