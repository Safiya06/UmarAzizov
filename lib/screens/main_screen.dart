import 'package:flutter/material.dart';
import 'package:umar_azizov/components/carousel.dart';
import 'package:umar_azizov/screens/notification_screen.dart';

class MainScreen extends StatelessWidget {
  final List<String> imgList = [
    'assets/carousel1.png',
    'assets/image 130.png',
    'assets/image 120.png',
  ];
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            floating: true,
            title: Image.asset('assets/Logo (1).png'),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFF1E293B),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()));
                  },
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              child: Column(
                children: [
                  MyCarousel(
                    imgList: imgList,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
