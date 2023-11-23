import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: customCard(
              title: "Ini adalah judul",
              content: "Ini adalah konten",
              customText: "Ini adalah deskripsi"),
        ),
      ),
    );
  }
}

class customCard extends StatelessWidget {
  final String title;
  final String content;
  final String customText;
  customCard(
      {required this.title, required this.content, required this.customText});

  @override
  Widget build(BuildContext context) {
    double cardWidth =
        MediaQuery.of(context).size.width - 32; // 16 padding on each side
    double cardHeight = 250;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          width: cardWidth,
          height: cardHeight,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  content,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
