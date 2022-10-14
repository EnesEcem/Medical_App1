import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String imageDoctor;
  final String rating;
  final String doctorName;
  final String doctorTitle;
  const DoctorCard({
    super.key,
    required this.imageDoctor,
    required this.doctorName,
    required this.doctorTitle,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Column(
              children: [
                //resim
                Image.asset(
                  imageDoctor,
                  height: 80,
                ),
                SizedBox(height: 3),

                // rating
                Row(
                  children: [
                    Icon(Icons.star),
                    Text(rating),
                  ],
                ),
                SizedBox(height: 3),

                // doctor
                Text(doctorName),
                SizedBox(height: 3),

                // doctore title
                Text(doctorTitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
