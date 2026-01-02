import 'package:flutter/material.dart';
import 'package:ezyxs/feature/replicate/view/widgets/replicate_bottom_navigation.dart';

class ReplicateBookNowBar extends StatelessWidget {
  final VoidCallback? onBook;

  const ReplicateBookNowBar({Key? key, this.onBook}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 40,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onBook ?? () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 2,
            ),
            child: Ink(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF11CC9A), Color(0xFF305189)],
                ),
        
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Book Now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
