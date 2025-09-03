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
        "color1": Colors.blue.shade400,
        "color2": Colors.blue.shade700,
      },
      {
        "title": "Yoga Camp",
        "date": "25th July, 6 AM",
        "details":
        "Join our free yoga camp at the community hall. Open to all residents.",
        "icon": Icons.self_improvement,
        "color1": Colors.green.shade400,
        "color2": Colors.teal.shade600,
      },
      {
        "title": "Electricity Shutdown",
        "date": "30th July, 11 AM – 1 PM",
        "details":
        "Power cut for line maintenance. Backup generators will run for lifts only.",
        "icon": Icons.electric_bolt,
        "color1": Colors.orange.shade400,
        "color2": Colors.deepOrange.shade600,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Announcements"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        foregroundColor: Colors.black87,
      ),
      backgroundColor: const Color(0xFFF5F7FA),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          final item = announcements[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [item['color1'] as Color, item['color2'] as Color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: (item['color2'] as Color).withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(18),
              leading: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white.withOpacity(0.9),
                child: Icon(item['icon'] as IconData,
                    size: 30, color: Colors.black87),
              ),
              title: Text(
                item['title'].toString(),
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['date'].toString(),
                        style: const TextStyle(
                            fontSize: 13, color: Colors.white70)),
                    const SizedBox(height: 6),
                    Text(item['details'].toString(),
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            height: 1.4)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
