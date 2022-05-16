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
  TileContentTwo({required this.label});

  final String label;
  double height = 180.0;

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
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.height.round().toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(width: 5.0),
              const Text(
                "cm",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: kaccentColor,
            overlayColor: kaccentColorOverlay,
            activeTrackColor: kaccentColor,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
          ),
          child: Slider(
            value: widget.height,
            min: 120.0,
            max: 220.0,
            onChanged: (double newValue) {
              setState(() {
                widget.height = newValue.round().toDouble();
                print("Slider Changed!");
              });
            },
          ),
        )
      ],
    );
  }
}
