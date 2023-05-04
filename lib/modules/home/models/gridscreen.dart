import 'package:flutter/material.dart';

class GridTab  {
  GridTab({  this.names,  this.image});
  final String? names;
  final String ?image;  
}

List<GridTab> gridname = [
  GridTab(
    names: 'Circket \nmania',
    image: 'images/img9.png'
  ),
  GridTab(
    names: 'Earth Day \ncollection',
    image: 'images/img10.png',
  ),
  GridTab(names: 'Popular \nunder 5k', image: 'images/img11.png',),
  GridTab(
      names: 'Retiremnet \nPlanning', image: 'images/img9.png'),
  GridTab(names: 'Dividend \nincome', image: 'images/img10.png'),
  GridTab(
      names: 'Popular Last \n Financial',
      image: 'images/img11.png'),
];
