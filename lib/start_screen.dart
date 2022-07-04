import 'package:flutter/material.dart';
import 'package:otp_notification/gen/assets.gen.dart';
import 'package:otp_notification/register.dart';

class StartScreen extends StatelessWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.images.startScreen.image(),
        const SizedBox(height: 20),
        const Text(
          'Hadi Başlayalım',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        const Text(
          'Başlamak için bundan daha iyi bir zaman olamaz.',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black26),
        ),
        const SizedBox(height: 35),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
            child: const Text('Hesap Oluştur', style: TextStyle(fontSize: 16)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                )),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Giriş Yap', style: TextStyle(fontSize: 16)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all(Colors.purple),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                )),
          ),
        ),
      ],
    );
  }
}
