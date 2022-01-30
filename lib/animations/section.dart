import 'package:flutter/material.dart';

import 'frame.dart';

class Section extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget child;
  final VoidCallback? onPressed;

  const Section({
    Key? key,
    required this.title,
    required this.body,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: 640,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(
              title: title,
            ),
            const SizedBox(height: 20),
            DefaultTextStyle.merge(
              style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 25),
              child: body,
            ),
            const SizedBox(height: 20),
            Align(
              child: AppFrameCard(
                title: title,
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
    );
  }
}
