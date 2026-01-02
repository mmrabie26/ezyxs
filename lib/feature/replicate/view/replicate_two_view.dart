import 'package:ezyxs/feature/replicate/view/widgets/replicate_bottom_navigation.dart';
import 'package:ezyxs/feature/replicate/view/widgets/replicate_two/replicate_book_now.dart';
import 'package:ezyxs/feature/replicate/view/widgets/replicate_two/replicate_two_content.dart';
import 'package:ezyxs/feature/replicate/view/widgets/replicate_two/replicate_two_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReplicateTwoView extends StatelessWidget {
  const ReplicateTwoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ReplicateTwoHeader(),
          const ReplicateTwoContent(),
          const ReplicateBookNowBar(),
        ],
      ),
      bottomNavigationBar: const ReplicateBottomNavigation(),
    );
  }
}

// class _Dot extends StatelessWidget {
//   final bool active;
//   const _Dot({this.active = false});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: active ? 18 : 8,
//       height: 8,
//       decoration: BoxDecoration(
//         color: active ? Colors.white : Colors.white54,
//         borderRadius: BorderRadius.circular(6),
//       ),
//     );
//   }
// }

// class _InfoRow extends StatelessWidget {
//   final IconData icon;
//   final String text;
//   final bool muted;

//   const _InfoRow({required this.icon, required this.text, this.muted = false});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Icon(icon, size: 18, color: const Color(0xFF2E80BA)),
//         const SizedBox(width: 8),
//         Expanded(child: Text(text, style: TextStyle(fontSize: 13, color: muted ? Colors.black45 : Colors.black87))),
//       ],
//     );
//   }
// }

// class _SportChip extends StatelessWidget {
//   final String label;
//   final bool selected;

//   const _SportChip({required this.label, this.selected = false});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       decoration: BoxDecoration(
//         color: selected ? const Color(0xFFECF8F6) : Colors.white,
//         borderRadius: BorderRadius.circular(30),
//         border: Border.all(color: selected ? Colors.transparent : const Color(0xFFE6EDF3)),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           if (selected) const Icon(Icons.sports_soccer, size: 16, color: Color(0xFF17C3A2)),
//           if (selected) const SizedBox(width: 8),
//           Text(label, style: TextStyle(color: selected ? const Color(0xFF2E80BA) : Colors.black87)),
//         ],
//       ),
//     );
//   }
// }
