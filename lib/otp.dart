import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_notification/gen/assets.gen.dart';

class Otp extends StatelessWidget {
  Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
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
                  child: Assets.images.otp.image(),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Doğrulama',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Telefonunuza gelen kodu giriniz.',
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
                      OtpTextField(
                        numberOfFields: 4,
                        fieldWidth: 60,
                        enabledBorderColor: Colors.purple,
                        focusedBorderColor: Colors.purple,
                        onCodeChanged: (String code) {},
                        onSubmit: (String verificationCode) {},
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Doğrula', style: TextStyle(fontSize: 16)),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                              )),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Kod Gönderilmedi mi?',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black38),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Tekrar Gönder',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
