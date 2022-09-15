import 'package:flutter/material.dart';

class Portofolio extends StatelessWidget {
  const Portofolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Portofolio Aku"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Center(child: Text("Portofolio 1")),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "gambar/skyblocker.jpg",
            width: 256,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(child: Text("Gambar 1")),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "
              "took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, "
              "but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with "
              "the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
              "Aldus PageMaker including versions of Lorem Ipsum."
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "
              "took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, "
              "but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with "
              "the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
              "Aldus PageMaker including versions of Lorem Ipsum."
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "
              "took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, "
              "but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with "
              "the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
              "Aldus PageMaker including versions of Lorem Ipsum.",
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(child: Text("Portofolio 2")),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "gambar/hawkwatch.jpg",
            width: 256,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(child: Text("Gambar 2")),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "
                  "took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, "
                  "but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with "
                  "the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
                  "Aldus PageMaker including versions of Lorem Ipsum."
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "
                  "took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, "
                  "but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with "
                  "the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
                  "Aldus PageMaker including versions of Lorem Ipsum."
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer "
                  "took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, "
                  "but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with "
                  "the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
                  "Aldus PageMaker including versions of Lorem Ipsum.",
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
