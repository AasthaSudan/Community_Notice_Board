import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  const AnnouncementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final announcements = [
      {
        "title": "Water Supply Maintenance",
        "date": "20th July, 10 AM – 2 PM",
        "details":
        "Water supply will be interrupted due to maintenance work. Please store enough water in advance.",
        "icon": Icons.water_drop,
        "color": Colors.blue
      },
      {
        "title": "Yoga Camp",
        "date": "25th July, 6 AM",
        "details":
        "Join our free yoga camp at the community hall. Open to all residents.",
        "icon": Icons.self_improvement,
        "color": Colors.green
      },
      {
        "title": "Electricity Shutdown",
        "date": "30th July, 11 AM – 1 PM",
        "details":
        "Power cut for line maintenance. Backup generators will run for lifts only.",
        "icon": Icons.electric_bolt,
        "color": Colors.orange
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: announcements.length,
      itemBuilder: (context, index) {
        final item = announcements[index];
        return Material(
          borderRadius: BorderRadius.circular(16),
          elevation: 4,
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  (item['color'] as Color).withOpacity(0.6),
                  item['color'] as Color
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white.withOpacity(0.9),
                child: Icon(item['icon'] as IconData,
                    size: 30, color: item['color'] as Color),
              ),
              title: Text(
                item['title'].toString(),
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['date'].toString(),
                        style: const TextStyle(color: Colors.white70)),
                    const SizedBox(height: 8),
                    Text(item['details'].toString(),
                        style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
