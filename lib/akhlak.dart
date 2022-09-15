import 'package:flutter/material.dart';

class Akhlak extends StatelessWidget {
  const Akhlak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Akhlak"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          // Card(
          //   elevation: 10,
          //   child: ListTile(
          //     leading: Icon(
          //       Icons.account_box,
          //       size: 48,
          //       color: Colors.blueAccent,
          //     ),
          //     title: Text("Akhlak"),
          //     subtitle: Text("Koleksi"),
          //     trailing: Text("Cekidot"),
          //     onTap: () {
          //       Navigator.pop(context);
          //
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const Akhlak(),
          //         ),
          //       );
          //     },
          //   ),
          // ),

          // const SizedBox(
          //   height: 20,
          // ),
          Image.asset(
            "gambar/akhlak.jpg",
            width: 256,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 10,
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