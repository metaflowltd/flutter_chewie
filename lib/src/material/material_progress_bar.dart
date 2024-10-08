import 'package:chewieLumen/src/chewie_progress_colors.dart';
import 'package:chewieLumen/src/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MaterialVideoProgressBar extends StatelessWidget {
  MaterialVideoProgressBar(
    this.controller, {
    this.height = kToolbarHeight,
    ChewieLumenProgressColors? colors,
    this.onDragEnd,
    this.onDragStart,
    this.onDragUpdate,
    this.onProgressChanged,
    Key? key,
  })  : colors = colors ?? ChewieLumenProgressColors(),
        super(key: key);

  final double height;
  final VideoPlayerController controller;
  final ChewieLumenProgressColors colors;
  final Function()? onDragStart;
  final Function()? onDragEnd;
  final Function()? onDragUpdate;
  final Function()? onProgressChanged;

  @override
  Widget build(BuildContext context) {
    return VideoProgressBar(
      controller,
      barHeight: 10,
      handleHeight: 6,
      drawShadow: true,
      colors: colors,
      onDragEnd: onDragEnd,
      onDragStart: onDragStart,
      onDragUpdate: onDragUpdate,
      onProgressChanged: onProgressChanged,
    );
  }
}
