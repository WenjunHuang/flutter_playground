import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const HomePage());

const red = Colors.red;
const green = Colors.green;
const blue = Colors.blue;
const big = TextStyle(fontSize: 30);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterLayoutArticle([
      Example1(),
      Example2(),
      Example3(),
      Example4(),
      Example5(),
      Example6(),
      Example7(),
      Example8(),
      Example9(),
      Example10(),
      Example11(),
      Example12(),
      Example13(),
      Example14(),
      Example15(),
      Example16(),
      Example17(),
      Example18(),
      Example19(),
      Example20(),
      Example21(),
      Example22(),
      Example23(),
      Example24(),
      Example25(),
      Example27(),
    ]);
  }
}

abstract class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  String get code;

  String get explanation;
}

class FlutterLayoutArticle extends StatefulWidget {
  final List<Example> examples;

  const FlutterLayoutArticle(this.examples, {Key? key}) : super(key: key);

  @override
  _FlutterLayoutArticleState createState() => _FlutterLayoutArticleState();
}

class _FlutterLayoutArticleState extends State<FlutterLayoutArticle> {
  late int count;
  late Widget example;
  late String code;
  late String explanation;

  @override
  void initState() {
    count = 1;
    code = const Example1().code;
    explanation = const Example1().explanation;

    super.initState();
  }

  @override
  void didUpdateWidget(covariant FlutterLayoutArticle oldWidget) {
    super.didUpdateWidget(oldWidget);
    var example = widget.examples[count - 1];
    code = example.code;
    explanation = example.explanation;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout Article',
      home: SafeArea(
        child: Material(
          color: Colors.black,
          child: FittedBox(
            child: Container(
              width: 400,
              height: 670,
              color: const Color(0xFFCCCCCC),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      child: widget.examples[count - 1],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.black,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0; i < widget.examples.length; i++)
                            Container(
                                width: 58,
                                padding: const EdgeInsets.only(
                                  left: 4.0,
                                  right: 4.0,
                                ),
                                child: button(i + 1)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Scrollbar(
                      child: SingleChildScrollView(
                          key: ValueKey(count),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Center(child: Text(code)),
                                const SizedBox(height: 15),
                                Text(explanation,
                                    style: TextStyle(
                                      color: Colors.blue[900],
                                      fontStyle: FontStyle.italic,
                                    ))
                              ],
                            ),
                          )),
                    ),
                    height: 273,
                    color: Colors.grey[50],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget button(int exampleNumber) {
    return Button(
      key: ValueKey('button$exampleNumber'),
      isSelected: count == exampleNumber,
      exampleNumber: exampleNumber,
      onPressed: () {
        showExample(
          exampleNumber,
          widget.examples[exampleNumber - 1].code,
          widget.examples[exampleNumber - 1].explanation,
        );
      },
    );
  }

  void showExample(int exampleNumber, String code, String explanation) {
    setState(() {
      count = exampleNumber;
      this.code = code;
      this.explanation = explanation;
    });
  }
}

class Button extends StatelessWidget {
  final bool isSelected;
  final int exampleNumber;
  final VoidCallback onPressed;

  const Button({
    required Key key,
    required this.isSelected,
    required this.exampleNumber,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: isSelected ? Colors.grey : Colors.grey[800],
      ),
      onPressed: () {
        Scrollable.ensureVisible(context,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOut,
            alignment: 0.5);
        onPressed();
      },
      child: Text(exampleNumber.toString()),
    );
  }
}

class Example1 extends Example {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: red);
  }

  @override
  String get code => 'Container(color: red)';

  @override
  String get explanation => 'The screen is the parent of the Container, '
      'and it forces the Container to be exactly the same size as the screen.'
      '\n\n'
      'So the Container fills the screen and paints it red.';
}

class Example2 extends Example {
  const Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: red,
    );
  }

  @override
  String get code => 'Container(width: 100, height: 100, color: red)';

  @override
  // TODO: implement explanation
  String get explanation =>
      'The red Container wants to be 100x100, but it can\'t, '
      'because the screen forces it to be exactly the same size as the screen.'
      '\n\n'
      'So the Container fills the screen.';
}

class Example3 extends Example {
  const Example3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: red,
      ),
    );
  }

  @override
  String get code => 'Center(\n'
      '    child: Container(width: 100, height: 100, color: red))';

  @override
  String get explanation =>
      'The screen forces the Center to be exactly the same size as the screen,'
      'so the Center fills the screen.'
      '\n\n'
      'The Center tells the Container that it can be any size it wants, but not bigger than the screen.'
      'Now the Container can indeed be 100x100.';
}

class Example4 extends Example {
  const Example4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 100,
        height: 100,
        color: red,
      ),
    );
  }

  @override
  String get code => 'Align(\n'
      '   alignment: Alignment.bottomRight,\n'
      '   child: Container(width: 100, height: 100, color: red))';

  @override
  String get explanation =>
      'This is different from the previous example in that it uses Align instead of Center.'
      '\n\n'
      'Align also tells the Container that it can be any size it wants, but if there is empty space it won\'t center the Container. '
      'Instead, it aligns the Container to the bottom-right of the available space.';
}

class Example5 extends Example {
  const Example5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: red,
      ),
    );
  }

  @override
  final code = 'Center(\n'
      '   child: Container(\n'
      '              color: red,\n'
      '              width: double.infinity,\n'
      '              height: double.infinity))';

  @override
  final String explanation =
      'The screen forces the Center to be exactly the same size as the screen,'
      'so the Center fills the screen.'
      '\n\n'
      'The Center tells the Container that it can be any size it wants, but not bigger than the screen.'
      'The Container wants to be of infinite size, but since it can\'t be bigger than the screen, it just fills the screen.';
}

class Example6 extends Example {
  const Example6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: red,
      ),
    );
  }

  @override
  final code = 'Center(child: Container(color: red))';

  @override
  final String explanation =
      'The screen forces the Center to be exactly the same size as the screen,'
      'so the Center fills the screen.'
      '\n\n'
      'The Center tells the Container that it can be any size it wants, but not bigger than the screen.'
      '\n\n'
      'Since the Container has no child and no fixed size, it decides it wants to be as big as possible, so it fills the whole screen.'
      '\n\n'
      'But why does the Container decide that? '
      'Simply because that\'s a design decision by those who created the Container widget. '
      'It could have been created differently, and you have to read the Container documentation to understand how it behaves, depending on the circumstances. ';
}

class Example7 extends Example {
  const Example7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: red,
        child: Container(color: green, width: 30, height: 30),
      ),
    );
  }

  @override
  final code = 'Center(\n'
      '   child: Container(color: red\n'
      '      child: Container(color: green, width: 30, height: 30)))';

  @override
  final String explanation =
      'The screen forces the Center to be exactly the same size as the screen,'
      'so the Center fills the screen.'
      '\n\n'
      'The Center tells the red Container that it can be any size it wants, but not bigger than the screen.'
      'Since the red Container has no size but has a child, it decides it wants to be the same size as its child.'
      '\n\n'
      'The red Container tells its child that it can be any size it wants, but not bigger than the screen.'
      '\n\n'
      'The child is a green Container that wants to be 30x30.'
      '\n\n'
      'Since the red `Container` has no size but has a child, it decides it wants to be the same size as its child. '
      'The red color isn\'t visible, since the green Container entirely covers all of the red Container.';
}

class Example8 extends Example {
  const Example8({Key? key}) : super(key: key);

  @override
  final code = 'Center(\n'
      '   child: Container(color: red\n'
      '      padding: const EdgeInsets.all(20.0),\n'
      '      child: Container(color: green, width: 30, height: 30)))';
  @override
  final String explanation =
      'The red Container sizes itself to its children size, but it takes its own padding into consideration. '
      'So it is also 30x30 plus padding. '
      'The red color is visible because of the padding, and the green Container has the same size as in the previous example.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: red,
        child: Container(color: green, width: 30, height: 30),
      ),
    );
  }
}

class Example9 extends Example {
  const Example9({Key? key}) : super(key: key);

  @override
  final code = 'ConstrainedBox(\n'
      '   constraints: BoxConstraints(\n'
      '              minWidth: 70, minHeight: 70,\n'
      '              maxWidth: 150, maxHeight: 150),\n'
      '      child: Container(color: red, width: 10, height: 10)))';
  @override
  final String explanation =
      'You might guess that the Container has to be between 70 and 150 pixels, but you would be wrong. '
      'The ConstrainedBox only imposes ADDITIONAL constraints from those it receives from its parent.'
      '\n\n'
      'Here, the screen forces the ConstrainedBox to be exactly the same size as the screen, '
      'so it tells its child Container to also assume the size of the screen, '
      'thus ignoring its \'constraints\' parameter.';

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: 70, minHeight: 70, maxWidth: 150, maxHeight: 150),
      child: Container(color: red, width: 10, height: 10),
    );
  }
}

class Example10 extends Example {
  const Example10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 70,
            minHeight: 70,
            maxWidth: 150,
            maxHeight: 150,
          ),
          child: Container(color: red, width: 10, height: 10)),
    );
  }

  @override
  String get code => """Center(
  child: ConstrainedBox(
  constraints: const BoxConstraints(
  minWidth: 70,
  minHeight: 70,
  maxWidth: 150,
  maxHeight: 150,
  ),
  child:Container(color:red,width:10,height:10)
  ),
  )""";

  @override
  String get explanation =>
      """Now, Center allows ConstrainedBox to be any size up to the screen size. The ConstrainedBox imposes additional constraints from its constraints parameter onto its child.
The Container must be between 70 and 150 pixels. It wants to have 10 pixels, so it ends up having 70 (the minimum).""";
}

class Example11 extends Example {
  const Example11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(color: red, width: 1000, height: 1000),
      ),
    );
  }

  @override
  String get code => """
  Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child:Container(color:red,width:1000,height:1000),
      ),
    )""";

  @override
  String get explanation => """
  Center allows ConstrainedBox to be any size up to the screen size. The ConstrainedBox imposes additional constraints from its constraints parameter onto its child.
The Container must be between 70 and 150 pixels. It wants to have 1000 pixels, so it ends up having 150 (the maximum).""";
}

class Example12 extends Example {
  const Example12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 70,
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Container(color: red, width: 100, height: 100),
    ));
  }

  @override
  String get code => """
  Center(
      child:ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(color:red,width:100,height:100),
      )
    )""";

  @override
  String get explanation => """
  Center allows ConstrainedBox to be any size up to the screen size. The ConstrainedBox imposes additional constraints from its constraints parameter onto its child.
The Container must be between 70 and 150 pixels. It wants to have 100 pixels, and that’s the size it has, since that’s between 70 and 150.""";
}

class Example13 extends Example {
  const Example13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(color: red, width: 20, height: 50),
    );
  }

  @override
  String get code => """
 UnconstrainedBox(
      child:Container(color:red,width:20,height:50),
    )""";

  @override
  String get explanation => """
  The screen forces the UnconstrainedBox to be exactly the same size as the screen. However, the UnconstrainedBox lets its child Container be any size it wants.""";
}

class Example14 extends Example {
  const Example14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(color: red, width: 4000, height: 50),
    );
  }

  @override
  String get code => """
  UnconstrainedBox(
      child: Container(color: red, width: 4000, height: 500),
    )""";

  @override
  String get explanation => """
  The screen forces the UnconstrainedBox to be exactly the same size as the screen, and UnconstrainedBox lets its child Container be any size it wants.
Unfortunately, in this case the Container is 4000 pixels wide and is too big to fit in the UnconstrainedBox, so the UnconstrainedBox displays the much dreaded “overflow warning”.""";
}

class Example15 extends Example {
  const Example15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
        minWidth: 0.0,
        minHeight: 0.0,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        child: Container(color: red, width: 4000, height: 50));
  }

  @override
  String get code => """
  OverflowBox(
        minWidth: 0.0,
        minHeight: 0.0,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        child: Container(color: red, width: 4000, height: 50))""";

  @override
  String get explanation => """
  The screen forces the OverflowBox to be exactly the same size as the screen, and OverflowBox lets its child Container be any size it wants.
OverflowBox is similar to UnconstrainedBox; the difference is that it won’t display any warnings if the child doesn’t fit the space.
In this case, the Container has 4000 pixels of width, and is too big to fit in the OverflowBox, but the OverflowBox simply shows as much as it can, with no warnings given.""";
}

class Example16 extends Example {
  const Example16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(color: Colors.red, width: double.infinity),
    );
  }

  @override
  String get code => """
 UnconstrainedBox(
      child: Container(color:Colors.red,
      width:double.infinity),
    )""";

  @override
  String get explanation => """
  This won’t render anything, and you’ll see an error in the console.

The UnconstrainedBox lets its child be any size it wants, however its child is a Container with infinite size.

Flutter can’t render infinite sizes, so it throws an error with the following message: BoxConstraints forces an infinite width.""";
}

class Example17 extends Example {
  const Example17({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
        child: LimitedBox(
            maxWidth: 100,
            child: Container(
              color: Colors.red,
              width: double.infinity,
              height: 100,
            )));
  }

  @override
  String get code => """
  UnconstrainedBox(
      child:LimitedBox(
        maxWidth: 100,
        child:Container(
          color:Colors.red,
          width:double.infinity,
          height:100,
        )
      )
    )""";

  @override
  String get explanation => """
  Here you won’t get an error anymore, because when the LimitedBox is given an infinite size by the UnconstrainedBox; it passes a maximum width of 100 down to its child.
If you swap the UnconstrainedBox for a Center widget, the LimitedBox won’t apply its limit anymore (since its limit is only applied when it gets infinite constraints), and the width of the Container is allowed to grow past 100.
This explains the difference between a LimitedBox and a ConstrainedBox.""";
}

class Example18 extends Example {
  const Example18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(child: Text('Some Example Text.'));
  }

  @override
  String get code => """
  FittedBox(
      child:Text('Some Example Text.')
    )""";

  @override
  String get explanation => """
  The screen forces the FittedBox to be exactly the same size as the screen. The Text has some natural width (also called its intrinsic width) that depends on the amount of text, its font size, and so on.
The FittedBox lets the Text be any size it wants, but after the Text tells its size to the FittedBox, the FittedBox scales the Text until it fills all of the available width.""";
}

class Example19 extends Example {
  const Example19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: FittedBox(child: Text('Some Example Text.')));
  }

  @override
  String get code => """
  Center(
      child:FittedBox(
        child:Text('Some Example Text.')
      )
    )""";

  @override
  String get explanation => """
  But what happens if you put the FittedBox inside of a Center widget? The Center lets the FittedBox be any size it wants, up to the screen size.
The FittedBox then sizes itself to the Text, and lets the Text be any size it wants. Since both FittedBox and the Text have the same size, no scaling happens.""";
}

class Example20 extends Example {
  const Example20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Text(
            'This is some very very very large text that is too big to fit a regular screen in a single line.'),
      ),
    );
  }

  @override
  // TODO: implement code
  String get code => """
  Center(
        child: FittedBox(
      child: Text(
          'This is some very very very large text that is too big to fit a regular screen in a single line.'),
    ),)""";

  @override
  String get explanation => """
  However, what happens if FittedBox is inside of a Center widget, but the Text is too large to fit the screen?

FittedBox tries to size itself to the Text, but it can’t be bigger than the screen. It then assumes the screen size, and resizes Text so that it fits the screen, too.""";
}

class Example21 extends Example {
  const Example21({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'This is some very very very large text that is too big to fit a regular screen in a single line.'),
    );
  }

  @override
  String get code => """
  Center(
      child: Text(
          'This is some very very very large text that is too big to fit a regular screen in a single line.'),
    )""";

  @override
  String get explanation => """
  If, however, you remove the FittedBox, the Text gets its maximum width from the screen, and breaks the line so that it fits the screen.""";
}

class Example22 extends Example {
  const Example22({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: Container(
      height: 20.0,
      width: double.infinity,
      color: Colors.red,
    ));
  }

  @override
  String get code => """
  FittedBox(
      child:Container(
        height:20.0,
        width:double.infinity,
        color:Colors.red,
      )
    )""";

  @override
  String get explanation => """
  FittedBox can only scale a widget that is bounded (has non-infinite width and height). Otherwise, it won’t render anything, and you’ll see an error in the console.""";
}

class Example23 extends Example {
  const Example23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(color: red, child: const Text('Hello!', style: big)),
        Container(color: green, child: const Text('Goodbye!', style: big)),
      ],
    );
  }

  @override
  String get code => """
  Row(
      children: [
        Container(color:red,child:const Text('Hello!',style:big)),
        Container(color:green,child:const Text('Goodbye!',style:big)),
      ],
    )""";

  @override
  String get explanation => """
  The screen forces the Row to be exactly the same size as the screen.
Just like an UnconstrainedBox, the Row won’t impose any constraints onto its children, and instead lets them be any size they want. The Row then puts them side-by-side, and any extra space remains empty.""";
}

class Example24 extends Example {
  const Example24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        color: red,
        child: const Text(
          'This is a very long text that '
          'won\'t fit the line.',
          style: big,
        ),
      ),
      Container(color: green, child: const Text('Goodbye!', style: big)),
    ]);
  }

  @override
  String get code => """
  Row(
      children:[
        Container(
          color:red,
          child:const Text(
            'This is a very long text that '
                'won\'t fit the line.',
            style:big,
          ),
        ),
        Container(color:green,child:const Text('Goodbye!',style:big)),
      ]
    )""";

  @override
  String get explanation => """
  Since Row won’t impose any constraints onto its children, it’s quite possible that the children might too big to fit the available width of the Row. In this case, just like an UnconstrainedBox, the Row displays the “overflow warning”.""";
}

class Example25 extends Example {
  const Example25({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Container(
              color: red,
              child: const Text(
                'This is a very long text that won\'t fit the line.',
                style: big,
              ),
            ),
          ),
        ),
        Container(color: green, child: const Text('Goodbye!', style: big)),
      ],
    );
  }

  @override
  String get code => """
  Row(
  children: [
    Expanded(
      child: Center(
        child: Container(
          color: red,
          child: const Text(
            'This is a very long text that won\'t fit the line.',
            style: big,
          ),
        ),
      ),
    ),
    Container(color: green, child: const Text('Goodbye!', style: big)),
  ],
)""";

  @override
  String get explanation => """
  When a Row’s child is wrapped in an Expanded widget, the Row won’t let this child define its own width anymore.
Instead, it defines the Expanded width according to the other children, and only then the Expanded widget forces the original child to have the Expanded’s width.
In other words, once you use Expanded, the original child’s width becomes irrelevant, and is ignored.""";
}

class Example27 extends Example {
  const Example27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            color: red,
            child: const Text(
              'This is a very long text that won\'t fit the line.',
              style: big,
            ),
          ),
        ),
        Flexible(
          child: Container(
            color: green,
            child: const Text(
              'Goodbye!',
              style: big,
            ),
          ),
        ),
      ],
    );
  }

  @override
  String get code => """
  Row(
  children: [
    Flexible(
      child: Container(
        color: red,
        child: const Text(
          'This is a very long text that won\'t fit the line.',
          style: big,
        ),
      ),
    ),
    Flexible(
      child: Container(
        color: green,
        child: const Text(
          'Goodbye!',
          style: big,
        ),
      ),
    ),
  ],
)""";

  @override
  String get explanation => """
  The only difference if you use Flexible instead of Expanded, is that Flexible lets its child have the same or smaller width than the Flexible itself, while Expanded forces its child to have the exact same width of the Expanded. But both Expanded and Flexible ignore their children’s width when sizing themselves.""";
}
