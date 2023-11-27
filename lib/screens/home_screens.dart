import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constants.dart';
import 'package:flutter_responsive_ui/demoData.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kActiveColor),
                ),
                Text(
                  "San Franciscco",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          // 이 자리에 바로 위젯을 적용할 수 없다
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.81,
              child: PageView.builder(
                itemCount: demoBigImages.length,
                itemBuilder: (context, index) => Image.asset(
                  demoBigImages[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
