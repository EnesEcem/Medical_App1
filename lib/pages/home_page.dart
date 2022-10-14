import 'package:flutter/material.dart';
import 'package:medical_app/util/category_card.dart';
import 'package:medical_app/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Enes Ece",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //profil resmi

                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.person)),
                ],
              ),
            ),

            //card how do you feel

            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      //animasyon resmi

                      Image.network(
                        'https://www.forwardmedical.com.au/wp-content/uploads/2019/04/doctor-440x440.jpg',
                        height: 100,
                      ),

                      SizedBox(width: 25),

                      //how do you feel + get started button

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "How do you feel?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Fill out your medical card right now.",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                            SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple[300],
                                  borderRadius: BorderRadius.circular(12)),
                              height: 40,
                              child: Center(
                                  child: Text(
                                'Get Started',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            //search bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you?'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //horizontal listview
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategortCard(
                      categoryName: ' Medicine',
                      iconImage: 'lib/icons/medicine.png'),
                  CategortCard(
                      categoryName: ' Pharmacy',
                      iconImage: 'lib/icons/pharmacy.png'),
                  CategortCard(
                      categoryName: ' Science',
                      iconImage: 'lib/icons/science.png'),
                ],
              ),
            ),
            SizedBox(height: 20),

            //doctor list

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'See All',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    imageDoctor: 'lib/images/doctor-1.png',
                    doctorName: 'Dyt.Ezgi Er',
                    doctorTitle: 'Uzm.Diyetisyen',
                    rating: '4.9',
                  ),
                  DoctorCard(
                    imageDoctor: 'lib/images/doctor-2.png',
                    doctorName: 'Psk.Enes Ece',
                    doctorTitle: 'Uzm.Psikolog',
                    rating: '4.7',
                  ),
                  DoctorCard(
                    imageDoctor: 'lib/images/Doctor_Strange.png',
                    doctorName: 'Doctor Strange',
                    doctorTitle: 'Uzm.Büyücü',
                    rating: '4.5',
                  ),
                  DoctorCard(
                    imageDoctor: 'lib/images/doctor-3.png',
                    doctorName: 'Dr.Firuze Taşka',
                    doctorTitle: 'Uzm.Kardiolog',
                    rating: '4.6',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Favorites",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: Icon(Icons.notification_add),
          ),
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
