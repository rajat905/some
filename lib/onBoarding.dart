import 'package:esport/Provider/play.dart';
import 'package:esport/plans.dart';
import 'package:esport/staus.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onboard extends StatelessWidget {
  const onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
        title: Text(
          'Esports Engagement',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 769,
              color: Colors.blue[200],
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 330,
                      child: Text(
                        'Manage Your Esports Competition with the right tools',
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 330,
                      child: Text(
                          'Tournament is a suite of powerful tools for organizers, agencies, studios and publishers to manage their tournaments and circuits',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return StatusPage();
                            })));
                          },
                          child: Container(
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[900],
                            ),
                            child: Center(
                              child: Text(
                                'Get Started for Free',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return plans();
                            })));
                          },
                          child: Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Text(
                                'See Plans',
                                style: TextStyle(color: Colors.blue[900]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_pnqcpdc8.json',
                        fit: BoxFit.cover)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[200],
        child: DrawerHeader(
            child: Column(
          children: [buildHeader(context), buildMenuItems(context)],
        )),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(top: 10),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Play',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return play();
              }));
            },
          ),
          ListTile(
            title:
                Text('Pricing', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return plans();
              }));
            },
          ),
          ListTile(
            title: Text('Organizer',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
            onTap: () {},
          ),
          Divider(
            color: Colors.purple[900],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return StatusPage();
              })));
            },
            child: Container(
              height: 45,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[900],
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),SizedBox(height: 50,),
          Container(
            height: 280,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Lottie.network(
                  'https://assets9.lottiefiles.com/packages/lf20_b9p9fqsk.json',
                  fit: BoxFit.cover),
            ),
          )
        ],
      );
}
