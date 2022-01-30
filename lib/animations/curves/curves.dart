import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_playground/animations/section.dart';
import 'package:google_fonts/google_fonts.dart';

class CurvesPage extends StatefulWidget {
  const CurvesPage({Key? key}) : super(key: key);

  @override
  _CurvesPageState createState() => _CurvesPageState();
}

class _CurvesPageState extends State<CurvesPage> with SingleTickerProviderStateMixin {
  Curve _leftCurve = Curves.linear;
  Curve _rightCurve = Curves.linear;
  late AnimationController _controller;

  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3))..repeat(reverse: true);
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Section(
      title: "curves",
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: _DropdownCurve(
                  curve: _leftCurve,
                  key: const Key('left-curve'),
                  onChanged: (curve) {
                    setState(() => _leftCurve = curve);
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _DropdownCurve(
                  key: const Key('right-curve'),
                  curve: _rightCurve,
                  onChanged: (curve) {
                    setState(() => _rightCurve = curve);
                  },
                ),
              )
            ],
          ),
        ],
      ),
      child: _CurvesExample(
        leftCurve: _leftCurve,
        rightCurve: _rightCurve,
        animation: _controller,
        child: createAnimateChild(),
      ),
    );
  }

  Widget createAnimateChild() {
    return Card(
      color: Colors.yellowAccent,
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Icon(
          Icons.star,
          size: 50,
        ),
      ),
    );
  }
}

class _CurvesExample extends StatelessWidget {
  final Curve leftCurve;
  final Curve rightCurve;
  final Widget child;
  final Animation<double> animation;

  const _CurvesExample({
    Key? key,
    required this.leftCurve,
    required this.rightCurve,
    required this.child,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SlideTransition(
            position: animation.drive(CurveTween(curve: leftCurve)).drive(Tween<Offset>(
                  begin: const Offset(0, 0),
                  end: const Offset(0, 1),
                )),
            child: child,
          ),
          SlideTransition(
            position: animation.drive(CurveTween(curve: rightCurve)).drive(
                  Tween<Offset>(
                    begin: const Offset(0, 0),
                    end: const Offset(0, 1),
                  ),
                ),
            child: child,
          ),
        ],
      ),
    );
  }
}

const kAllCurves = {
  Curves.linear: 'linear',
  Curves.decelerate: 'decelerate',
  Curves.fastLinearToSlowEaseIn: 'fastLinearToSlowEaseIn',
  Curves.ease: 'ease',
  Curves.easeIn: 'easeIn',
  Curves.easeInToLinear: 'easeInToLinear',
  Curves.easeInSine: 'easeInSine',
  Curves.easeInQuad: 'easeInQuad',
  Curves.easeInCubic: 'easeInCubic',
  Curves.easeInQuart: 'easeInQuart',
  Curves.easeInQuint: 'easeInQuint',
  Curves.easeInExpo: 'easeInExpo',
  Curves.easeInCirc: 'easeInCirc',
  Curves.easeInBack: 'easeInBack',
  Curves.easeOut: 'easeOut',
  Curves.linearToEaseOut: 'linearToEaseOut',
  Curves.easeOutSine: 'easeOutSine',
  Curves.easeOutQuad: 'easeOutQuad',
  Curves.easeOutCubic: 'easeOutCubic',
  Curves.easeOutQuart: 'easeOutQuart',
  Curves.easeOutQuint: 'easeOutQuint',
  Curves.easeOutExpo: 'easeOutExpo',
  Curves.easeOutCirc: 'easeOutCirc',
  Curves.easeOutBack: 'easeOutBack',
  Curves.easeInOut: 'easeInOut',
  Curves.easeInOutSine: 'easeInOutSine',
  Curves.easeInOutQuad: 'easeInOutQuad',
  Curves.easeInOutCubic: 'easeInOutCubic',
  Curves.easeInOutQuart: 'easeInOutQuart',
  Curves.easeInOutQuint: 'easeInOutQuint',
  Curves.easeInOutExpo: 'easeInOutExpo',
  Curves.easeInOutCirc: 'easeInOutCirc',
  Curves.easeInOutBack: 'easeInOutBack',
  Curves.fastOutSlowIn: 'fastOutSlowIn',
  Curves.slowMiddle: 'slowMiddle',
  Curves.bounceIn: 'bounceIn',
  Curves.bounceOut: 'bounceOut',
  Curves.bounceInOut: 'bounceInOut',
  Curves.elasticIn: 'elasticIn',
  Curves.elasticOut: 'elasticOut',
  Curves.elasticInOut: 'elasticInOut',
};

class _DropdownCurve extends StatelessWidget {
  final Curve curve;
  final ValueChanged<Curve> onChanged;

  const _DropdownCurve({
    Key? key,
    required this.curve,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Curve>(
      isExpanded: true,
      value: curve,
      onChanged: (c) {
        if (c != null) onChanged(c);
      },
      items: [
        for (final curve in kAllCurves.keys) DropdownMenuItem<Curve>(value: curve, child: Text(kAllCurves[curve]!)),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.crimsonProTextTheme(),
      ),
      title: "Curves",
      home: Material(child: CurvesPage()),
    ),
  );
}
