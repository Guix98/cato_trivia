import 'package:flutter/material.dart';

class UserAchievement extends StatelessWidget {
  const UserAchievement(
      {Key? key, required this.name, required this.icon, required this.value})
      : super(key: key);

  final String name;
  final int value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white38),
          ),
          Text(
            value.toString(),
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          )
        ],
      ),
    );
  }
}
