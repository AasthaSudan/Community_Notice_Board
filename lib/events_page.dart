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
        "details":
        "Flag hoisting, cultural program, and snacks. All residents are invited!",
        "icon": Icons.flag,
        "color1": Colors.pinkAccent,
        "color2": Colors.redAccent,
      },
      {
        "title": "Monthly Meeting",
        "date": "5th August, 6:00 PM",
        "location": "Community Hall",
        "details":
        "Agenda: Maintenance fees, upcoming festival budget, and security updates.",
        "icon": Icons.meeting_room,
        "color1": Colors.deepPurpleAccent,
        "color2": Colors.indigo,
      },
      {
        "title": "Ganesh Chaturthi Celebration",
        "date": "10th September, 7:00 PM",
        "location": "Society Courtyard",
        "details":
        "Cultural dance, music, and prasad distribution. Join with family & friends.",
        "icon": Icons.celebration,
        "color1": Colors.orangeAccent,
        "color2": Colors.deepOrange,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Upcoming Events"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        foregroundColor: Colors.black87,
      ),
      backgroundColor: const Color(0xFFF5F7FA),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            margin: const EdgeInsets.only(bottom: 16),
            child: ExpansionTile(
              tilePadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [event['color1'] as Color, event['color2'] as Color],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Icon(event['icon'] as IconData,
                      size: 28, color: Colors.white),
                ),
              ),
              title: Text(
                event['title'].toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(event['date'].toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.black54)),
                  const SizedBox(height: 4),
                  Text("📍 ${event['location']}",
                      style: const TextStyle(fontSize: 13, color: Colors.black54)),
                ],
              ),
              childrenPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: [
                Text(
                  event['details'].toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
