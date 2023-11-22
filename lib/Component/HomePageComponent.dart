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
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(20),
          ),
          child: Column(
            children: [
              MyBanner(), // Menambahkan banner
              MyHeader(), // menambahkan header
              HomePageForm(),
            ],
          ),
        ),
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
