import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  SlideTile({this.image, this.activePage});
  final String image;
  final bool activePage;
  @override
  Widget build(BuildContext context) {
    final double top = this.activePage ? 50 : 150;
    final double blur = this.activePage ? 30 : 0;
    final double offset = this.activePage ? 20 : 0;
    return AnimatedContainer(
      duration: Duration(microseconds: 1000),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: 100,
        right: 30,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: blur,
              offset: Offset(offset, offset))
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(this.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
