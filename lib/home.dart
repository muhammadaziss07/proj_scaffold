import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Selamat Datang Di LMS",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
            height: 20,
        ),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(
              seconds: 4,
            ),
          ),
          items: [1, 2, 3].map((i) {
            return Builder(builder: (BuildContext context) {
              return Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
                decoration: const BoxDecoration(color: Colors.black),
                child: Image.asset("gambar/course.jpg",
                  fit: BoxFit.fitWidth,
                ),
                padding: const EdgeInsets.all(5),

              );
            });
          }).toList(),
        ),
        Padding(
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