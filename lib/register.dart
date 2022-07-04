import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:otp_notification/gen/assets.gen.dart';
import 'package:otp_notification/otp.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 30),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(onTap: (() => Navigator.pop(context)), child: const Icon(Icons.arrow_back, size: 32, color: Colors.black54)),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.deepPurple.shade100, shape: BoxShape.circle),
              child: Assets.images.register.image(),
            ),
            const SizedBox(height: 20),
            const Text(
              'Kayıt Ol',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Başlamak için telefon numaranı yaz.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black26),
            ),
            const SizedBox(height: 35),
            Container(
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black26),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black26),
                        ),
                        prefix: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Text(
                            '(+90)',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 25,
                        )),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Otp()),
                        );
                      },
                      child: const Text('Gönder', style: TextStyle(fontSize: 16)),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
