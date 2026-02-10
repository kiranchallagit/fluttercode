import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PodcastScreen(),
    );
  }
}

class PodcastScreen extends StatelessWidget {

  final List<Map<String, String>> podcasts = [
    {
      "title": "When The Morning Dawns - DJ Silver Club Remix",
      "image": "https://picsum.photos/200?1",
      "time": "20 hours ago"
    },
    {
      "title": "Cheap Airline Tickets Great Ways To Save",
      "image": "https://picsum.photos/200?2",
      "time": "20 hours ago"
    },
    {
      "title": "Vacation Home Rental Success",
      "image": "https://picsum.photos/200?3",
      "time": "20 hours ago"
    },
    {
      "title": "Cruising Destination Ideas",
      "image": "https://picsum.photos/200?4",
      "time": "20 hours ago"
    },
    {
      "title": "Global Resorts Network Putting Timeshares To Shame",
      "image": "https://picsum.photos/200?5",
      "time": "20 hours ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("PODCASTS"),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: ListView.separated(
        itemCount: podcasts.length,
        separatorBuilder: (context, index) => Divider(height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                podcasts[index]["image"]!,
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              podcasts[index]["title"]!,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(podcasts[index]["time"]!),
            trailing: Icon(Icons.play_arrow, color: Colors.black),
            onTap: () {},
          );
        },
      ),
    );
  }
}