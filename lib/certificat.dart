import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cv/NavBar.widget.dart';

class Certificat extends StatelessWidget {
  final VoidCallback toggleTheme;

  Certificat({required this.toggleTheme});

  final List<String> images = [
    'assets/certif1.JPG',
    'assets/img.png',
    'assets/certif 2.jpg',
    'assets/img_1.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Certificats',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFCE8F8A),
      ),
      drawer: NavBar(toggleTheme),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/profile.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 250,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {},
              scrollDirection: Axis.horizontal,
            ),
            items: images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
