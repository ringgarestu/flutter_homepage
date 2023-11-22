import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey, //warna background
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //sejajarkan tombol
        children: [
          IconButton(
            onPressed: () {
              // aksi ketika tombol ditekan
            },
            icon: Image.asset('assets/images/home_a.svg'),
          ),
          IconButton(
            onPressed: () {
              // aksi ketika tombol ditekan
            },
            icon: Image.asset('assets/images/connection_na.svg'),
          ),
          IconButton(
            onPressed: () {
              // aksi ketika tombol ditekan
            },
            icon: Image.asset('assets/images'),
          ),
          IconButton(
            onPressed: () {
              // aksi ketika tombol ditekan
            },
            icon: Image.asset('assets/images/chat_na.svg'),
          ),
          IconButton(
            onPressed: () {
              // aksi ketika tombol ditekan
            },
            icon: Image.asset('assets/images/profile_na.svg'),
          ),
        ],
      ),
    );
  }
}

class SvgIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String iconPath;

  const SvgIconButton({
    Key? key,
    this.onPressed,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
      ),
    );
  }
}
