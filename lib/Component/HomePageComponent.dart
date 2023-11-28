import 'package:flutter/material.dart';
import 'package:flutter_homepage/Component/HomePageForm.dart';
import 'package:flutter_homepage/size_config.dart';

class HomePageComponent extends StatefulWidget {
  @override
  _HomePageComponent createState() => _HomePageComponent();
}

class _HomePageComponent extends State<HomePageComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          MyBanner(),
          MyHeader(),
          HomePageForm(),
        ],
      ),
    );
  }
}

class MyBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFed174b),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/dole.png',
            width: 90,
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.white, //bg tombol
              onPrimary: Color(0xFFed174b), //teks tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}

class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFed174b),
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Dole',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                  height:
                      8.0), // Jarak antara teks "Welcome" dan "Please Login"
              Text(
                'Please Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

double getProportionateScreenHeight(double inputWidth) {
  return inputWidth * 0.1;
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xffe0e0e0),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'What is Dole?',
                    style: TextStyle(
                      color: Color(0xFFed174b),
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: '  •  ',
                    style: TextStyle(
                      color: Color(0xFF333333),
                    ),
                  ),
                  TextSpan(
                    text: "Blog",
                    style: TextStyle(
                      color: Color(0xFFed174b),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              color: Color(0xfff8f8f8),
              thickness: 1,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/facebook.png",
                    width: 20, height: 20),
                SizedBox(width: 13),
                Image.asset("assets/images/instagram.png",
                    width: 20, height: 20),
                SizedBox(width: 13),
                Image.asset("assets/images/twitter.png", width: 20, height: 20),
                SizedBox(width: 13),
                Image.asset("assets/images/linkedin.png",
                    width: 20, height: 20),
                SizedBox(width: 13),
                Image.asset("assets/images/arroba.png", width: 20, height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
