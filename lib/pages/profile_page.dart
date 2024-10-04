import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Профиль",
                  style: GoogleFonts.sourceSerif4(
                      textStyle: const TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 238, 205, 1.0),
                      )))),
          backgroundColor: const Color.fromRGBO(71, 58, 42, 1.0),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(71, 58, 42, 1.0),
          child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40
                  ),
                  Container(
                    width: 200,
                    height: 200,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage('https://github.com/loloneme/images/blob/main/182a9bb9f5b32babe6efc8c7bf4305be.jpg?raw=true'),
                          fit: BoxFit.cover
                        ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromRGBO(44, 32, 17, 1.0),
                        width: 3
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 30
                  ),
                  Text('Мрясова Анастасия',
                      style: GoogleFonts.sourceSerif4(
                      textStyle: const TextStyle(
                        fontSize: 28.0,
                        color: Color.fromRGBO(255, 238, 205, 1.0),
                      ))),
                  const SizedBox(height: 15),
                  Text('1fukkacumi2@mail.ru',
                      style: GoogleFonts.sourceSerif4(
                          textStyle: const TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(255, 238, 205, 1.0),
                          )))
                ],
              ),

            ),
        )
    );
  }
}
