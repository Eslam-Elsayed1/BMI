
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hello_world/pages/signup.dart';


class Login extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "D:/caloriescounter/images/Sigin.png",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  "Hesabınıza Giriş Yapın",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Şifre",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 14, 54, 88),
                  minimumSize: Size(
                    MediaQuery.of(context).size.width / 1.1,
                    50,
                  )),
              onPressed: () {},
              child: const Text("Giriş Yap"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                SizedBox(width: 5),
                Text("veya"),
                SizedBox(width: 5),
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 3),
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 3),
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 3),
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Henüz üye değil misin?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  signup()));
                    },
                    child: const Text("Kayıt Ol!",
                        style: TextStyle(
                          color: Color.fromARGB(255, 14, 54, 88),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}