import 'dart:ui';

import 'package:flutter/material.dart';

void main() {

  final picture = drawPicture();

  final sceneBuilder = SceneBuilder();
  sceneBuilder.pushOffset(0, 0 );

  // 将picture送入SceneBuilder
  sceneBuilder.addPicture(Offset(0,0),picture);
  sceneBuilder.pop();

  // 生成Scene
  final scene = sceneBuilder.build();

  window.onDrawFrame = () {
    // 将scene送入Engine层进行渲染显示
    window.render(scene);
  };
  window.scheduleFrame();
}

Picture drawPicture(){
  final recorder = PictureRecorder();

  //初始化Canvas时，传入PictureRecorder实例
  // 用于记录发生在该canvas上的所有操作
  //
  final canvas = Canvas(recorder);

  final circlePaint = Paint();
  circlePaint.color = Colors.blueAccent;

  // 调用canvas的绘制接口，画一个圆形
  canvas.drawCircle(Offset(400,400),300,circlePaint);

  // 绘制结束，生成Picture
  return recorder.endRecording();

}
