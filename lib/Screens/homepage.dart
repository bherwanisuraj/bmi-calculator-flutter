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
  double height = 180.0;
  int weight = 20;
  int age = 18;

  int increment(labelValue) {
    return labelValue + 1;
  }

  int decrement(labelValue) {
    return labelValue - 1;
  }

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
                      });
                    },
                    child: Tiles(
                      colour: selectedGender == Gender.female
                          ? activeTileColor = kaccentColor
                          : activeTileColor = ktileColor,
                      tileContent: const TileContent(
                          icon: Icons.female, label: "FEMALE"),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: Tiles(
                colour: ktileColor,
                tileContent: TileContentTwo(
                  sliderWidget: SliderTheme(
                    data: const SliderThemeData(
                      thumbColor: kaccentColor,
                      overlayColor: kaccentColorOverlay,
                      activeTrackColor: kaccentColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 16.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 25.0),
                    ),
                    child: Slider(
                      value: height,
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round().toDouble();
                        });
                      },
                    ),
                  ),
                  label: "HEIGHT",
                  tileContent: [
                    Text(
                      height.round().toString(),
                      style: kNumber,
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
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Tiles(
                    colour: ktileColor,
                    tileContent: TileTwo(
                      tileThreeContent: [
                        Text(
                          "WEIGHT",
                          style: klabel,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  weight = decrement(weight);
                                });
                              },
                              child:
                                  Icon(Icons.remove, color: kappPrimaryColor),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  weight = increment(weight);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: kappPrimaryColor,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Tiles(
                  colour: ktileColor,
                  tileContent: TileTwo(
                    tileThreeContent: [
                      Text(
                        "AGE",
                        style: klabel,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        age.toString(),
                        style: kNumber,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                age = decrement(age);
                              });
                            },
                            child: Icon(Icons.remove, color: kappPrimaryColor),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                age = increment(age);
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: kappPrimaryColor,
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            )),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'calculate');
              },
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
