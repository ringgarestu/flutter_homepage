import 'package:flutter/material.dart';
import 'package:flutter_homepage/Component/footer.dart';
import 'package:flutter_homepage/Screens/homepageScreen.dart';
import 'package:flutter_homepage/size_config.dart';
import 'package:flutter_homepage/Component/customCard.dart';
import 'package:flutter_homepage/Component/footer.dart';

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
          SizedBox(height: 16), // Tambahkan SizedBox ini untuk memberikan ruang
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              customCard(title: "card 1", content: "content 1"),
              customCard(title: "card 2", content: "content 2"),
              customCard(title: "card 3", content: "content 3"),
              customCard(title: "card 4", content: "content 4"),
              customCard(title: "card 5", content: "content 5"),
            ],
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
          SizedBox(height: 22),
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
