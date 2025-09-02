import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final events = [
      {
        "title": "Independence Day Celebration",
        "date": "15th August, 9:00 AM",
        "location": "Community Ground",
        "details": "Flag hoisting, cultural program, and snacks. All residents are invited!",
        "icon": Icons.flag,
        "color": Colors.red
      },
      {
        "title": "Monthly Meeting",
        "date": "5th August, 6:00 PM",
        "location": "Community Hall",
        "details": "Agenda: Maintenance fees, upcoming festival budget, and security updates.",
        "icon": Icons.meeting_room,
        "color": Colors.purple
      },
      {
        "title": "Ganesh Chaturthi Celebration",
        "date": "10th September, 7:00 PM",
        "location": "Society Courtyard",
        "details": "Cultural dance, music, and prasad distribution. Join with family & friends.",
        "icon": Icons.celebration,
        "color": Colors.orange
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return Material(
          borderRadius: BorderRadius.circular(16),
          elevation: 4,
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  (event['color'] as Color).withOpacity(0.6),
                  event['color'] as Color
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
                child: Icon(event['icon'] as IconData,
                    size: 30, color: event['color'] as Color),
              ),
              title: Text(
                event['title'].toString(),
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(event['date'].toString(),
                        style: const TextStyle(color: Colors.white70)),
                    const SizedBox(height: 4),
                    Text("📍 ${event['location']}",
                        style: const TextStyle(color: Colors.white70)),
                    const SizedBox(height: 8),
                    Text(event['details'].toString(),
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
