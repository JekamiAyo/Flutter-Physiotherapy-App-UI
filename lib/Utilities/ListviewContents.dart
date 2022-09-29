import 'package:flutter/material.dart';

class SymptomListviewContents extends StatelessWidget {
  final String feelings;

  const SymptomListviewContents({
    Key? key,
    required this.feelings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 135.0,
          color: Color(0xFFF4F6FA),
          child: Center(
            child: Text(feelings),
          ),
        ),
      ),
    );
  }
}

class TherapistListViewContents extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String jobDescription;
  final icon;
  final String rating;

  const TherapistListViewContents(
      {Key? key,
      required this.doctorName,
      required this.jobDescription,
      required this.icon,
      required this.imagePath,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePath)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctorName),
                SizedBox(
                  height: 10,
                ),
                Text(
                  jobDescription,
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: Color(0xFF1E59DA),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(rating)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
