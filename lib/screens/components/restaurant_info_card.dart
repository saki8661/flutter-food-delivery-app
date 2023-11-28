import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constants.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard(
      {Key? key,
        required this.title,
        required this.image,
        required this.location,
        required this.deliveryTime,
        required this.rating,
        required this.press})
      : super(key: key);
  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              title,
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              location,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: kBodyColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.black, fontSize: 12),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding / 2,
                          vertical: defaultPadding / 8),
                      decoration: BoxDecoration(
                        color: kActiveColor,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Text(
                        rating.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Text("$deliveryTime min"),
                    Spacer(),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: Color(0xFF868686),
                    ),
                    Spacer(),
                    Text("Free delivery"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
