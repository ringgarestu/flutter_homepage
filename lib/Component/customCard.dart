import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customCard(
                title: "Ini adalah judul pertama",
                content: "Ini adalah konten",
                customText: "Ini adalah deskripsi",
              ),
              SizedBox(height: 16),
              customCard(
                title: "Judul Baru",
                content: "Ini adalah konten lain",
                customText: "Deskripsi lain",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class customCard extends StatelessWidget {
  final String? title;
  final String content;
  final String customText;
  final String? imagePath;

  customCard(
      {this.title,
      required this.content,
      required this.customText,
      this.imagePath});

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width - 32;
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
                if (title != null && title!.isNotEmpty)
                  Text(
                    title!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                if (title != null &&
                    title!.isNotEmpty) // Tambahkan kondisi lagi
                  SizedBox(height: 10), // Hanya beri jarak jika judul ada
                Text(
                  content,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  customText,
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
