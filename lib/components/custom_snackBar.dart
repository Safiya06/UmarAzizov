import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  final Widget content;
  final Duration duration;
  final Widget? title1;
  final Color backgroundColor;
  final Widget? image;
  final Widget? iconButton;
  final Widget? title2;
  final Widget? title3;
  final Widget? title4;
  final Widget? appButton;

  const CustomSnackBar({
    super.key,
    required this.content,
    required this.duration,
    this.backgroundColor = Colors.black,
    this.title1,
    this.image,
    this.iconButton,
    this.title2,
    this.title3,
    this.appButton,
    this.title4
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
             if (title1 != null) ...[
              title1!,
              const SizedBox(width: 4),
            ],
            const SizedBox(width: 160,),
              if (iconButton!= null)...[
                iconButton!,
                const SizedBox(width: 4),
              ],
            ],
            ),
             if (image!= null)...[
                image!,
                const SizedBox(height: 5),
              ],
              if (title2!= null)...[
                title2!,
                const SizedBox(height: 5),
              ],
              if (title3!= null)...[
                title3!,
                const SizedBox(height: 5),
              ],
            content,
            SizedBox(
              height: 20,
            ),
            if (title4!= null)...[
                title4!,
                const SizedBox(height: 5),
              ],
              SizedBox(height: 20,),
              if (appButton!= null)...[
                appButton!,
                const SizedBox(height: 5),
              ],
          ],
        ),
      ),
    );
  }
}
