import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/widgets/category_card.dart';
import 'package:medical_app/widgets/doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //appBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'David KALIPE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                  //profile Picture
                  Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.person,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //body
            //card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(15)),
                child: Row(children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        'https://lottie.host/2e1ebe31-4a16-4de7-9382-ecbfc6a47727/8IDh2WluwA.json'),
                  ),
                  const SizedBox(width: 20),
                  //animation or cute picture
                  //how do you feel + button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'How do you feel?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Fill out your medical card right now',
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text('Get Started'),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(height: 25),
            //searchBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you?'),
                ),
              ),
            ),
            const SizedBox(height: 25),
            //horizontal listView
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    iconImagePath: 'lib/icons/tooth-mouth.png',
                    categoryName: 'Dentist',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/icons/hearth.png',
                    categoryName: 'Cardiologist',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/icons/doctor.png',
                    categoryName: 'Surgeon',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/icons/pilltablets.png',
                    categoryName: 'Pharmacist',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doctor list',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('See all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[500]))
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DoctorCard(
                  doctorImagePath: 'lib/images/woman.jpg',
                  doctorName: 'Arlner Gisel',
                  doctorProfession: 'Cardiologist',
                  rating: '4.9',
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/woman.jpg',
                  doctorName: 'Lepain Georges',
                  doctorProfession: 'Therapist',
                  rating: '3.8',
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/woman.jpg',
                  doctorName: 'Mories sophie',
                  doctorProfession: 'Cardiologist',
                  rating: '4.9',
                ),
                SizedBox(width: 15)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
