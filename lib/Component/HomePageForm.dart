import 'package:flutter/material.dart';
import 'package:flutter_homepage/Component/footer.dart';
import 'package:flutter_homepage/Screens/homepageScreen.dart';
import 'package:flutter_homepage/size_config.dart';
import 'package:flutter_homepage/Component/customCard.dart';

class HomePageForm extends StatefulWidget {
  @override
  _HomePageForm createState() => _HomePageForm();
}

class _HomePageForm extends State<HomePageForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Container(
            margin: const EdgeInsets.only(left: 16),
            child: Text(
              'Featured',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          FeaturedImage(),
          SizedBox(height: 16),
          Column(
            children: List.generate(5, (index) {
              if (index == 0) {
                // Judul khusus untuk card pertama
                return customCard(
                  title: "Against the Odds",
                  content: "Friday, 23 December 2023",
                  customText: "Against the Odds",
                );
              } else {
                // Judul umum untuk card lainnya
                return customCard(
                  title: "ini adalah judul ${index + 1}",
                  content: "content ${index + 1}",
                  customText: "custom text ${index + 1}",
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}

class FeaturedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
          width: 10,
        ),
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/n1.jpeg',
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Explore',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
