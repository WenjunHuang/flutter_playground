import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_playground/paint_context/simple.dart';

void main() {
  ContainerLayer containerLayer = ContainerLayer();
  PaintingContext paintingContext = PaintingContext(containerLayer, Rect.zero);

  Paint circle1Paint = Paint();
  circle1Paint.color = Colors.blue;

  //

  // 对画布进行裁剪
  print(identityHashCode(paintingContext.canvas));
  paintingContext.canvas.clipRect(
      Rect.fromCenter(center: Offset(400, 400), width: 280, height: 600));

  // 在裁剪后的画布上画个圈
  paintingContext.canvas.drawCircle(Offset(400, 400), 300, circle1Paint);

  void _painter(PaintingContext context, Offset offset) {
    Paint circle2Paint = Paint();
    circle2Paint.color = Colors.red;
    print(identityHashCode(paintingContext.canvas));
    context.canvas.drawCircle(Offset(400, 400), 250, circle2Paint);
  }

  // 通过 pushClipRect 方法再次进行裁剪
  // 注意此处 needsCompositing 参数为true
  paintingContext.pushClipRect(
    true,
    Offset.zero,
    Rect.fromCenter(center: Offset(500, 400), width: 200, height: 200),
    _painter,
  );

  Paint circle3Paint = Paint();
  circle3Paint.color = Colors.yellow;

  // 再次画个圈
  print(identityHashCode(paintingContext.canvas));
  paintingContext.canvas.drawCircle(Offset(400,800),300,circle3Paint);
  paintingContext.stopRecordingIfNeeded();


  final sceneBuilder = SceneBuilder();
  sceneBuilder.pushOffset(0, 0 );

  // 将picture送入SceneBuilder
  // sceneBuilder.addPicture(Offset(0,0),picture);
  containerLayer.addToScene(sceneBuilder);
  sceneBuilder.pop();

  // sceneBuilder.pushOffset(0, 0 );
  // sceneBuilder.addPicture(Offset.zero, drawPicture());
  // sceneBuilder.pop();

  // 生成Scene
  final scene = sceneBuilder.build();

  window.onDrawFrame = () {
    // 将scene送入Engine层进行渲染显示
    window.render(scene);
  };
  window.scheduleFrame();
}
