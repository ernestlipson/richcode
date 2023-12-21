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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6f8),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[VideoTemplate(), CommentBox()],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 50,
      width: double.infinity,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home),
          Icon(Icons.web),
          Icon(Icons.chat),
          Icon(Icons.storage),
        ],
      ),
    );
  }
}

class CommentBox extends StatelessWidget {
  const CommentBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 70,
      child: Row(
        children: [
          const Flexible(
              child: SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add a comment...",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          )),
          const SizedBox(width: 14),
          SizedBox(
            height: 50,
            width: 50,
            child: Material(
              type: MaterialType.transparency,
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.deepOrange,
                ),
                child: InkWell(
                  //borderRadius: BorderRadius.circular(100.0),
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.send,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class VideoTemplate extends StatelessWidget {
  const VideoTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Navigation the New Normal.",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            clipBehavior: Clip.antiAlias,
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/cover-image.jpg"),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(65),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.deepOrange,
              ),
            ),
          ),
          const SizedBox(height: 9),
          const Text(
            "by u/internetPositif . 16h",
          ),
        ],
      ),
    );
  }
}
