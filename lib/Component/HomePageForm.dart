import 'package:flutter/material.dart';
import 'package:flutter_homepage/Component/footer.dart';
import 'package:flutter_homepage/Screens/homepageScreen.dart';
import 'package:flutter_homepage/size_config.dart';
import 'package:flutter_homepage/Component/customCard.dart';

class HomePageForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Your Header Title'),
              background: FeaturedImage(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                customCard(title: "Card1", content: "content1"),
                customCard(title: "Card2", content: "content2"),
                customCard(title: "Card3", content: "content3"),
                customCard(title: "Card4", content: "content4"),
                customCard(title: "Card5", content: "content5"),
              ],
            ),
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
