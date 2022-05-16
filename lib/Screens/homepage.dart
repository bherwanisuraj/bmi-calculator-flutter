import 'package:bmi_calculator/Styling/stylesheet.dart';
import 'package:bmi_calculator/Widgets/tiles.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Gender { noGender, male, female }

class _MyHomePageState extends State<MyHomePage> {
  Color activeTileColor = ktileColor;
  Gender selectedGender = Gender.noGender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kappPrimaryColor,
        appBar: AppBar(
          backgroundColor: kappPrimaryColor,
          title: const Center(child: Text("BMI Calculator")),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        print('Gender Changed!');
                      });
                    },
                    child: Tiles(
                      colour: selectedGender == Gender.male
                          ? activeTileColor = kaccentColor
                          : activeTileColor = ktileColor,
                      tileContent:
                          const TileContent(icon: Icons.male, label: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        print('Gender Changed!');
                      });
                    },
                    child: Tiles(
                      colour: selectedGender == Gender.female
                          ? activeTileColor = kaccentColor
                          : activeTileColor = ktileColor,
                      tileContent:
                          TileContent(icon: Icons.female, label: "FEMALE"),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: Tiles(
                colour: ktileColor,
                tileContent: TileContentTwo(label: "HEIGHT"),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Tiles(
                    colour: ktileColor,
                    tileContent: TileContentTwo(label: "HEIGHT"),
                  ),
                ),
                Expanded(
                  child: Tiles(
                    colour: ktileColor,
                    tileContent: TileContent(icon: Icons.male, label: "MALE"),
                  ),
                ),
              ],
            )),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: const Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: kaccentColor,
                width: double.infinity,
                height: 80.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
