import 'package:flutter/material.dart';
import 'package:cato_trivia/theme/colors.dart' as colors;

class ExtrasContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() onClick;
  const ExtrasContainer({
    required this.title,
    required this.subtitle,
    Key? key,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: colors.grey5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: colors.hawkesBlue,
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Container(
                height: 60,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: colors.grey2,
                ))
          ],
        ),
      ),
    );
  }
}
