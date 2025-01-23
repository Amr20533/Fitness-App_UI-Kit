import 'package:flutter/material.dart';

class AuthBg extends StatelessWidget {
  const AuthBg({
    super.key,
    required this.image,
    required this.child,
  });

  final String image;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                )
            ),
          ),
          child
        ],
      ),
    );
  }
}
