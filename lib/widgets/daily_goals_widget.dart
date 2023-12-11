import 'package:flutter/material.dart';

class DailyGoalsWidget extends StatelessWidget {
  const DailyGoalsWidget({
    super.key,
    required this.textsPageController,
  });

  final PageController textsPageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: double.infinity,
      margin: const EdgeInsets.all(12),
      child: PageView(
        controller: textsPageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "Daily goals",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff374671),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    const Expanded(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "92",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xff374671),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 20),
                      child: const Text("%"),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 28,
                      height: 28,
                      child: Image.asset(
                        'assets/fire_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1,790",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff374671),
                        ),
                      ),
                      Text(
                        "calories",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ))
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 28,
                      height: 28,
                      child: Image.asset(
                        'assets/feet_icon.png',
                        color: Colors.purple,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4,710",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff374671),
                        ),
                      ),
                      Text(
                        "steps",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ))
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 28,
                      height: 28,
                      child: Image.asset(
                        'assets/moon_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "8.2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff374671),
                          ),
                        ),
                        Text(
                          "hours",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "Journal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff374671),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Transform.translate(
                        offset: const Offset(0, 20), child: const Text("<")),
                    const Expanded(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "14",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff374671),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "December 2023",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff374671),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff374671),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "Anna",
                    style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff374671),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "22 years old",
                style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
