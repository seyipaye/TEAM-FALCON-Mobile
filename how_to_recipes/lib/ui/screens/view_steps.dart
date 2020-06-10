import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:how_to_recipes/ui/screens/widget/round_rectangular_button.dart';

import '../ui_helper.dart';

class ViewSteps extends StatelessWidget {
  String title = 'Jollof rice and Chicken';
  String description =
      'Jollof rice and chicken is a lorem ipsum dolor sit amet asipscing elit';
  final steps = <String>['Stepper'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Constants.lightBG,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 240.0,
              elevation: 1,
              floating: true,
              pinned: true,
              centerTitle: false,
              automaticallyImplyLeading: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Text(title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      )),
                  background: Image.asset(
                    'assets/images/sample_recipe.png',
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.5),
                    colorBlendMode: BlendMode.srcOver,
                  )),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_vert),
                  iconSize: 32.0,
                  color: Colors.white,
                  onPressed: () {},
                )
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((_, index) {
                if (index == 0) {
                  return _getHeader();
                } else {
                  if (index >= steps.length) {
                    steps.addAll(generateSteps());
                  }
                  // Spaces we're intentionally left
                  return _buildRow('  $index    ' + steps[index]);
                }
              }),
            )
          ],
        ),
      ),
    );
  }

  generateSteps() {
    return <String>[
      'Boil water',
      'Add rice',
    ];
  }

  _buildRow(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      child: RoundRectangularButton(
        20.0,
        color: Constants.kDarkOrange,
        text: text,
        constraints: BoxConstraints.expand(
          height: 50.0,
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            margin: EdgeInsets.symmetric(vertical: 24.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: Constants.kfont,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: Constants.kfont,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "Steps",
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: Constants.kfont,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
