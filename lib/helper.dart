import 'package:flutter/material.dart';
import 'package:trivago/city_container.dart';

import 'constants.dart';

List<Widget> buildCityContainers(List<String> cities) {
  return cities.map((city) {
    return Expanded( // Use Expanded if you want the containers to take equal space
      child: cityContainer(city_name: city),
    );
  }).toList();
}


List<Widget> buildCityRows(List<String> cities) {
  List<Widget> rows = [];


  for (int i = 0; i < cities.length; i += number_of_cities_in_row) {
    List<Widget> rowChildren = [];

    // Create the chunk of up to 4 cities
    for (int j = i; j < i + number_of_cities_in_row && j < cities.length; j++) {
      rowChildren.add(
        Expanded(
          child: cityContainer(city_name: cities[j]),
        ),
      );
    }

    // Create a new row with the chunk
    rows.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjusts spacing between containers
        children: rowChildren,
      ),
    );
  }

  return rows;
}
