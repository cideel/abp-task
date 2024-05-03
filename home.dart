import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
  
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.yellow,items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",backgroundColor: Colors.blue[900]),
            BottomNavigationBarItem(icon: Icon(Icons.play_circle_outlined),label: "My Courses"),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book_rounded),label: "Blogs"),
            BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: "Profile")
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          ),
      body: SafeArea(
        
          child: ListView(
        children: [
          SizedBox(
            height: 43,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Anggito!",
                  style: TextStyle(fontSize: 18),
                ),
                Icon(
                  Icons.search,
                  size: 25,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 336 / 184,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: const Color.fromARGB(255, 14, 54, 202),
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 50,
                      left: 200,
                      child: Image.asset(
                        "assets/background.png",
                        height: 123,
                      )),
                  Positioned(
                      top: 50,
                      left: 200,
                      child: Image.asset(
                        "assets/person.png",
                        height: 100,
                      )),
                  Positioned(
                      top: 110,
                      left: 200,
                      child: Image.asset(
                        "assets/clouds.png",
                        height: 70,
                      )),
                  Positioned(
                      top: 70,
                      left: 280,
                      child: Image.asset(
                        "assets/flowers.png",
                        height: 50,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "Secure the Online World",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                children: [
                              TextSpan(
                                  text: "\nLets get started with \ndigital age",
                                  style: TextStyle(fontWeight: FontWeight.w300))
                            ])),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(80, 10))),
                          child: Text("Enroll for free"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Cyber Security",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "145 Courses",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 15,
                            left: 120,
                            child: Image.asset(
                              "assets/cyber.png",
                              height: 40,
                            )),
                      ],
                    ),
                    height: 69,
                    width: 173,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 17),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Data Science",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "231 Courses",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              top: 15,
                              left: 120,
                              child: Image.asset(
                                "assets/aws.png",
                                height: 40,
                              )),
                        ],
                      ),
                      height: 69,
                      width: 173,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3))
                          ]),
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Cyber Security",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "145 Courses",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 15,
                            left: 120,
                            child: Image.asset(
                              "assets/cyber.png",
                              height: 40,
                            )),
                      ],
                    ),
                    height: 69,
                    width: 173,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Top Courses",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset("assets/laptopreal.png"),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Data Science",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("4.6"),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber[200],
                            ),
                            Text(
                              "10.5K Learners",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            )
                          ],
                        )
                      ],
                    ),
                    height: 181,
                    width: 230,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 7)
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/laptopreal.png"),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Machine Learning",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("4.9"),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.amber[200],
                              ),
                              Text(
                                "30.5K Learners",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              )
                            ],
                          )
                        ],
                      ),
                      height: 181,
                      width: 230,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7)
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
          
        ],
      )),
    );
  }
}
