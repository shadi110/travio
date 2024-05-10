import 'package:flutter/material.dart';

class cityContainer extends StatelessWidget {
  final String city_name;
  cityContainer({ super.key, required this.city_name });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(city_name, style: TextStyle(color: Colors.black),)),height: 50,),
    );
  }
}
