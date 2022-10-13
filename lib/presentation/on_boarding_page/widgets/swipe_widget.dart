import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SwipeWidget extends StatelessWidget {
  const SwipeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var icon = Icon(Icons.arrow_forward_ios);
    return SizedBox(
      width: 300.0,
      height: 50.0,
      child: Shimmer.fromColors(
        baseColor: Color.fromARGB(255, 140, 155, 201),
        highlightColor: Color.fromARGB(255, 16, 26, 158),
        child: Row(
          children: [
            Text(
              'SWIPE TO UNLOCK ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                icon,
                icon,
              ],
            )
          ],
        ),
      ),
    );
  }
}
