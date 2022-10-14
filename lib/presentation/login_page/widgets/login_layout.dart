import 'package:flutter/material.dart';
import 'package:tabata/resources/colors.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    double height_ = MediaQuery.of(context).size.height;
    Radius radius = Radius.circular(25);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: height_ * 0.15,
                width: double.infinity,
                color: AppColors.scaffoldBackgroundColor,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: radius,
                    topRight: radius,
                  ),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                height: height_ * 0.925,
                child: Center(child: child),
              ),
            )
          ],
        ),
      ),
    );
  }
}
