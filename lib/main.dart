import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Ui Day 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            child: Image.network(
                "https://ounass-ae.atgcdn.ae/small_light(p=zoom,of=webp,q=65)/pub/media/catalog/product/2/1/215571134_orange_in.jpg"),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff5f5f5),
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Casio Watch',
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'A05345',
                        style: TextStyle(
                            color: Color(0xffafafaf),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'A sleek, durable Casio watch featuring a digital display, stopwatch, alarm, and water resistance. Its lightweight design and adjustable resin strap make it perfect for everyday wear and outdoor activities. Reliable and stylish, it suits any occasion.',
                        style: TextStyle(fontSize: 15, color: Color(0xffafafaf)),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -20.0,
                child: Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white12,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child:
                        Image.asset("assets/images/basket8.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
