import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:presentation/presentation.dart';

class AppFrameCard extends StatelessWidget {
  final String title;
  final Widget child;

  const AppFrameCard({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: GoogleFonts.roboto(),
      child: SizedBox(
        width: 300,
        height: 400,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: AppFrame(
            title: Text(title, style: GoogleFonts.roboto(), overflow: TextOverflow.clip),
            time: Text(DateFormat.Hm().format(DateTime.now())),
            child: child,
          ),
        ),
      ),
    );
  }
}
