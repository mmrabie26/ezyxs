import 'package:flutter/material.dart';

class ReplicateOneStack extends StatelessWidget {
  const ReplicateOneStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          const Image(image: AssetImage("assets/images/stack.png")),
          // const Image(image: AssetImage("assets/images/stack2.png")),
          Column(
            children: [
              const Image(image: AssetImage("assets/images/ezyxs.png")),
              const Text(
                "Book your field easily and enjoy playing\n at your preferred time.",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 16,
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    hintText: 'Search your stadium',
                    hintStyle: const TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.3), // خلفية شفافة
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ), // إزالة الحدود الافتراضية
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
