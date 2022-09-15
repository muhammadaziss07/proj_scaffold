import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          "gambar/lms.png",
          width: 256,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Text(
                          'Email',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Text(
                          'Password',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
            height: 10,
        ),

        // ElevatedButton(
    //   style: style,
    //   onPressed: () {},
    //   child: const Text('Masuk'),
    //
    // ),
        ButtonTheme(
          minWidth: 380.0,
          height: 40,
          child: RaisedButton(
          onPressed: () {},
          child: const Text("Masuk"),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: const TextSpan(
            text: "Belum memiliki akun? ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Daftar Sekarang',
                style: TextStyle(
                  color: Colors.blue,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ],
    );

  }
}
