import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saurav_s_kamtalwar/github.dart';
import 'package:http/http.dart' as http;

import 'model/project.dart';

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

  bool load = false;
  List<Project> myprojects = [];
  Future<void> getprogects() async {
    print("object");
    String url = "https://centipede-jumper.cyclic.app/Projects";
    var responce = await http.get(Uri.parse(url));
    var jsondata = jsonDecode(responce.body);
    jsondata.forEach((element) {
      // if (element["_id"] != null &&
      //     element["lang"] != null &&
      //     element["title"] != null &&
      //     element["description"] != null &&
      //     element["star"] != null &&
      //     element["githuburl"] != null &&
      //     element["otherurl"] != null) {
      Project thisproject = Project(
          description: element["description"],
          githuburl: element["githuburl"],
          lang: element["lang"],
          otherurl: element["otherurl"],
          star: element["star"].toString(),
          title: element["title"]);
      print(thisproject);
      myprojects.add(thisproject);
      // }
    });
    print(myprojects);
    setState(() {
      load = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getprogects();
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
      body: load
          ? Container(
              margin: EdgeInsets.only(bottom: 20, top: 10),
              alignment: Alignment.center,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return projetCard(
                        myprojects[index].lang,
                        myprojects[index].title,
                        myprojects[index].description,
                        myprojects[index].star,
                        myprojects[index].githuburl);
                  }),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
