import 'package:bmi_calculator/Styling/stylesheet.dart';
import 'package:bmi_calculator/Widgets/tiles.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kappPrimaryColor,
            title: const Center(child: Text("BMI Calculator")),
          ),
          bottomNavigationBar: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: const Center(
                child: Text(
                  "Re-calculate",
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
          backgroundColor: kappPrimaryColor,
          body: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 70.0,
                    ),
                    Text(
                      "Your Results",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Tiles(
                      tileContent: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 60.0,
                            horizontal: 10.0,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "NORMAL",
                                style: klabel,
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                "22.0",
                                style: kNumberBig,
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                "Normal BMI Range:",
                                style: klabelText,
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                "18.5 - 25 Kg/M2",
                                style: klabelText2,
                              ),
                              SizedBox(height: 30.0),
                              Center(
                                child: Text(
                                  "You have a normal Body Weight. Good Job!",
                                  style: klabelText2,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      colour: ktileColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
