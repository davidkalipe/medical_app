import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  const DoctorCard(
      {super.key,
      required this.doctorImagePath,
      required this.rating,
      required this.doctorName,
      required this.doctorProfession});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Container(
        height: 10,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //picture of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePath,
                height: 100,
              ),
            ),
            const SizedBox(height: 10),
            //rating out of 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Text(
                  rating,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 10),
            //doctor name
            Text(
              doctorName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 5),
            //doctor title
            Text('$doctorProfession, 7 y.e'),
          ],
        ),
      ),
    );
  }
}
