import 'package:flutter/material.dart';
import 'Utilities/ListviewContents.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF1E59DA).withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Icon(
                      Icons.notifications_none_outlined,
                      color: Color(0xFF1E59DA),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow:[
                        BoxShadow(
                          color: Color(0xFF1E59DA).withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                          'images/doctorImage1.jpeg'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Hello,',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 35),
                  ),
                  Text(
                    'Chris 👋',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(32),
                        decoration: BoxDecoration(
                            color: Color(0xFF1E59DA),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF1E59DA).withOpacity(0.13),
                                spreadRadius: 10,
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.sports_gymnastics,
                              color: Color(0xFFE2EBFE),
                              size: 35,
                            ),
                            Text(
                              'Start Training',
                              style: TextStyle(
                                  color: Color(0xFFE2EBFE), fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(32),
                        decoration: BoxDecoration(color: Color(0xFFE2EBFE),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF1E59DA).withOpacity(0.13),
                                spreadRadius: 10,
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.today_outlined,
                              color: Color(0xFF1E59DA),
                              size: 35,
                            ),
                            Text(
                              'Your Treatment Plan',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'What are your symptoms?',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SymptomListviewContents(feelings: '😉 I\'m fine'),
                    SymptomListviewContents(feelings: '🤒 Fever'),
                    SymptomListviewContents(feelings: '🤧 Sneezy'),
                    SymptomListviewContents(feelings: '🤢 Nauseous'),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Popular Therapists',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    TherapistListViewContents(
                      icon: Icons.star_rounded,
                      doctorName: 'Dr. Alice Johnson',
                      jobDescription: 'Physiotherapist',
                      imagePath: 'images/doctorImage1.jpeg',
                      rating: '5.0',
                    ),
                    TherapistListViewContents(
                      icon: Icons.star_border_rounded,
                      doctorName: 'Dr. Mark Smith',
                      jobDescription: 'Therapist',
                      imagePath: 'images/doctorImage2.jpeg',
                      rating: '4.9',
                    ),
                    TherapistListViewContents(
                      icon: Icons.star_rounded,
                      doctorName: 'Dr. James Bond',
                      jobDescription: 'Ergonomic Care Advisor',
                      imagePath: 'images/doctorImage3.jpeg',
                      rating: '5.0',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xFF1E59DA),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined, color: Colors.blue.shade200),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined,
                color: Colors.blue.shade200),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.blue.shade200,
            ),
            label: ''),
      ]),
    );
  }
}
