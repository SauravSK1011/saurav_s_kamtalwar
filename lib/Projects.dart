import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saurav_s_kamtalwar/github.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  projetCard(lang, title, description, star, url) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 250,
      child: Card(
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => githubpage(
                                      url: url,
                                    )));
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: const Text("Comming Soon"),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      icon: Icon(
                        FontAwesomeIcons.googlePlay,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
        color: Color(0xff262628),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                  'FLUTTER',
                  'Agroscan',
                  'An Application For Farmer to Pridict of crop deisease ',
                  '3',
                  "https://github.com/SauravSK1011/agroscanapp"),
              projetCard(
                  'FLUTTER',
                  'AI Translator',
                  'This is a Translator App Which is Build using Flutter, Speech To Text, Google ML Kit, Google Translator and Text To Speech.',
                  '5',
                  "https://github.com/SauravSK1011/AI_Translator"),
              projetCard(
                  'FLUTTER',
                  'News App',
                  'This is a News App created using Flutter and NewsApi.',
                  '3',
                  "https://github.com/SauravSK1011/News_App"),
                  projetCard(
                  'FLUTTER',
                  'Mask Detection App',
                  'This is a Mask Detection App which can detect is there mask is on the face or not.',
                  '1',
                  "https://github.com/SauravSK1011/Mask_Detection_App"),
                  projetCard(
                  'FLUTTER',
                  'DataBase App',
                  'This is Database app which can store data of students using nodejs as Api in mongodb as a Database',
                  '1',
                  "https://github.com/SauravSK1011/DataBase_App"),
              projetCard(
                  'Python',
                  'Telegram Bot',
                  'This is Telegram Bot.',
                  '1',
                  "https://github.com/ssktelegram/bot"),
            ],
          ),
        ),
      ),
    );
  }
}
