import 'package:character_3d_app_ui/widgets/circle_clipper.dart';
import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
import 'widgets/daily_goals_widget.dart';
import 'widgets/morning_walk_list_widget.dart';
import 'widgets/walking_benefit_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  O3DController o3dController = O3DController();
  PageController page1 = PageController();
  PageController page2 = PageController();
  int page = 0;
  List<String> walkingBenefits = [
    "Enhances cardiovascular health, reducing risks.",
    "Boosts mood, reduces stress and anxiety",
    "Aids in weight management and fitness.",
    "Improves circulation, reduces blood pressure.",
    "Enhances creativity, clears the mind."
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Stack(
          children: [
            O3D(
              src: 'assets/disney_style_character.glb',
              controller: o3dController,
              ar: false,
              autoPlay: true,
              autoRotate: false,
              cameraControls: false,
              cameraTarget: CameraTarget(-.25, 1.5, 1.5),
              cameraOrbit: CameraOrbit(0, 90, 1),
              backgroundColor: const Color(0xffFFF4F3),
            ),
            PageView(
              controller: page1,
              children: [
                WalkingBenefitsWidget(
                    height: height, walkingBenefits: walkingBenefits),
                MorningWalkListWidget(height: height),
                ClipPath(
                  clipper: CircleClipper(),
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            DailyGoalsWidget(textsPageController: page2),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.purple,
            currentIndex: page,
            onTap: (page) {
              page1.animateToPage(page,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
              page2.animateToPage(page,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);

              //* Change the cameraTarget and cameraOrbit to change the direction & rotation of character
              if (page == 0) {
                o3dController.cameraTarget(-.25, 1.5, 1.5);
                o3dController.cameraOrbit(0, 90, 1);
              } else if (page == 1) {
                o3dController.cameraTarget(0, 1.8, 0);
                o3dController.cameraOrbit(-90, 90, 1.5);
              } else if (page == 2) {
                o3dController.cameraTarget(0, 3, 0);
                o3dController.cameraOrbit(0, 90, -3);
              }

              setState(() {
                this.page = page;
              });
            },
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.analytics_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.timer_outlined),
                label: 'Time',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ]),
      ),
    );
  }
}
