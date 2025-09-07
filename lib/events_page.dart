import 'package:flutter/material.dart';

// Define an Event class to make the code more type-safe
class Event {
  final String title;
  final String date;
  final String location;
  final String details;
  final IconData icon;
  final Color color1;
  final Color color2;

  Event({
    required this.title,
    required this.date,
    required this.location,
    required this.details,
    required this.icon,
    required this.color1,
    required this.color2,
  });
}

class EventsPage extends StatelessWidget {
  // Define a list of events using the Event class
  final List<Event> events = [
    Event(
      title: "Independence Day Celebration",
      date: "15th August, 9:00 AM",
      location: "Community Ground",
      details: "Flag hoisting, cultural program, and snacks. All residents are invited!",
      icon: Icons.flag,
      color1: Colors.pink.shade300,
      color2: Colors.pink.shade400,
    ),
    Event(
      title: "Monthly Meeting",
      date: "5th August, 6:00 PM",
      location: "Community Hall",
      details: "Agenda: Maintenance fees, upcoming festival budget, and security updates.",
      icon: Icons.meeting_room,
      color1: Colors.deepPurple.shade300,
      color2: Colors.deepPurple.shade400,
    ),
    Event(
      title: "Ganesh Chaturthi Celebration",
      date: "10th September, 7:00 PM",
      location: "Society Courtyard",
      details: "Cultural dance, music, and prasad distribution. Join with family & friends.",
      icon: Icons.celebration,
      color1: Colors.orange.shade300,
      color2: Colors.orange.shade400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upcoming Events", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        foregroundColor: Colors.black87,
      ),
      backgroundColor: const Color(0xFFF0F8FF), // Light pastel background
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return EventCard(event: event);
        },
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      shadowColor: Colors.black.withOpacity(0.1),
      color: Colors.transparent, // Make the card transparent to show the gradient
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [event.color1, event.color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.all(20),
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [event.color1, event.color2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Icon(
                event.icon,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
          title: Text(
            event.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87, // Darker text for better contrast
              shadows: [
                Shadow(
                  blurRadius: 3.0,
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.date,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87, // Dark text for better visibility
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "📍 ${event.location}",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54, // Lighter text for location
                ),
              ),
            ],
          ),
          childrenPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          children: [
            Text(
              event.details,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87, // Darker text for better contrast
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
