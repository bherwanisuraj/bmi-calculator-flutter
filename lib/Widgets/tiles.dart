import 'package:bmi_calculator/Styling/stylesheet.dart';
import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  const Tiles({required this.tileContent, required this.colour});
  final Widget tileContent;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: tileContent,
      ),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}

class TileContent extends StatelessWidget {
  const TileContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
          color: Colors.white,
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class TileContentTwo extends StatefulWidget {
  const TileContentTwo(
      {required this.label,
      required this.tileContent,
      required this.sliderWidget});

  final String label;
  final List<Widget> tileContent;
  final SliderTheme sliderWidget;

  @override
  State<TileContentTwo> createState() => _TileContentTwoState();
}

class _TileContentTwoState extends State<TileContentTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: klabel,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.tileContent),
        ),
        widget.sliderWidget
      ],
    );
  }
}

class TileTwo extends StatefulWidget {
  final List<Widget> tileThreeContent;

  TileTwo({required this.tileThreeContent});

  @override
  State<TileTwo> createState() => _TileTwoState();
}

class _TileTwoState extends State<TileTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.tileThreeContent,
    );
  }
}
