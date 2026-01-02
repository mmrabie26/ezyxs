import 'package:flutter/material.dart';

/// Main content for replicate two view wrapped in a Sliver
class ReplicateTwoContent extends StatelessWidget {
  final String title;
  final int price;

  const ReplicateTwoContent({
    Key? key,
    this.title = 'First Settlement Youth Center',
    this.price = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    maxLines: 2,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),

                // Price
                Expanded(
                  child: Text(
                    textAlign: TextAlign.end,
                    '$price EGP/Hour',
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF2E80BA),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Info rows
            const Column(
              children: [
                InfoRow(
                  icon: Icons.schedule,
                  text: 'Opening Hours:',
                  time: ' 08:00 AM - 10:00 PM',
                ),
                SizedBox(height: 8),
                InfoRow(
                  icon: Icons.timer,
                  text: 'Min Booking Duration:',
                  time: '60 min',
                  muted: true,
                ),
                SizedBox(height: 8),
                InfoRow(
                  icon: Icons.timer,
                  text: 'Max Booking Duration:',
                  time: "120 min",
                ),
              ],
            ),

            const SizedBox(height: 12),

            const Text(
              'Available Sports',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
            const SizedBox(height: 8),

            // Sports chips
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                SportChip(label: 'Football', selected: true),
                SportChip(label: 'Tennis'),
                SportChip(label: 'Ping Pong'),
                SportChip(label: 'Volleyball'),
                SportChip(label: 'Basketball'),
              ],
            ),

            const SizedBox(height: 14),

            // Banner
            Container(
              height: 68,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/banner.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String time;
  final bool muted;

  const InfoRow({required this.icon, required this.text,required this.time, this.muted = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: const Color(0xFF2E80BA)),
        const SizedBox(width: 8),
        Expanded(
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 13,
                  color: muted ? Colors.black45 : Colors.black87,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 13,
                  color:Color(0XFF305189),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SportChip extends StatelessWidget {
  final String label;
  
  final bool selected;

  const SportChip({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFECF8F6) : Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: selected ? Colors.transparent : const Color(0xFFE6EDF3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (selected)
            const Icon(Icons.sports_soccer, size: 16, color: Color(0xFF11CC9A)),
          if (selected) const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: selected ? const Color(0xFF2E80BA) : Colors.black87,
            ),
          ),

          
        ],
      ),
    );
  }
}
