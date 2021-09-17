import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Elon Musk's Resume",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

TextStyle titleStyle =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
Container skillItem(String text, Color c) {
  return Container(
    decoration:
        BoxDecoration(color: c, borderRadius: BorderRadius.circular(25)),
    margin: const EdgeInsets.all(8),
    alignment: Alignment.center,
    height: 25,
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elon Musk's Resume"),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://media.vanityfair.com/photos/58ed4db975dd30329d3c49c4/5:3/w_1440,h_864,c_limit/elon-musk-detroit.jpg"),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "ELON MUSK",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  const Text(
                    "CEO, Entrepreneur, Engineer, Inventor ",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.email),
                      Text("elon.musk@teslamotors.com")
                    ],
                  ),
                  Row(
                    children: const [Icon(Icons.phone), Text("(310) 420-1541")],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Summary : ",
                    style: titleStyle,
                  ),
                  const Text(
                      "Successful entrepreneur with 20+ years founding and steering highly profitable companies. Seeking to leverage my passion for innovation to tackle climate change and ensure human progress through sustainable manufacturing and space exploration initiatives. "),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Founder :",
                        style: titleStyle,
                      ),
                      const Text("The Boring Company (2017)"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Co-Founder :",
                        style: titleStyle,
                      ),
                      const Text("SolarCity (2017) "),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "CEO : ",
                        style: titleStyle,
                      ),
                      const Text("Tesla (2004) "),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "CEO & Founder: ",
                        style: titleStyle,
                      ),
                      const Text("SpaceX (2002)"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Skills:",
                    style: titleStyle,
                  ),
                  skillItem("Product Development", Colors.purple),
                  skillItem("Forward Thinking", Colors.cyan),
                  skillItem("Cutting-Edge Innovation", Colors.deepOrangeAccent),
                  skillItem("Space Exploration ", Colors.teal),
                  skillItem("Marketing Expert", Colors.pink),
                  skillItem("Corporate Leadership", Colors.brown)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
