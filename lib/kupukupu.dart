import 'package:flutter/material.dart';

class Kupukupu extends StatelessWidget {
  const Kupukupu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        const Text("Ini adalah Kupa Kupa"),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          "gambar/kupukupu.jpg",
          width: 256,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}