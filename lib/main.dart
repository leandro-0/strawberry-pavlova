import 'package:flutter/material.dart';
import 'package:strawberry_pavlova/widgets/base_container.dart';
import 'package:strawberry_pavlova/widgets/info_item.dart';
import 'package:strawberry_pavlova/widgets/rating.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Strawberry Pavlova'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('assets/images/pavlova.jpg'),
              ),
              const SizedBox(height: 20.0),
              const BaseContainer(
                child: Center(
                  child: Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              const BaseContainer(
                child: Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                  style: TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 15.0),
              const BaseContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Rating(stars: 5),
                    Text('170 Reviews', style: TextStyle(fontSize: 16.5)),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              const BaseContainer(
                customPadding: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 3.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoItem(
                      iconData: Icons.kitchen_rounded,
                      text: 'prep',
                      subtitle: '25 min',
                    ),
                    InfoItem(
                      iconData: Icons.timer_outlined,
                      text: 'cook',
                      subtitle: '1 hr',
                    ),
                    InfoItem(
                      iconData: Icons.restaurant_rounded,
                      text: 'feeds',
                      subtitle: '4-6',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
