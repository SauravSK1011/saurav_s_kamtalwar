import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saurav_s_kamtalwar/github.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/img.png',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Saurav S Kamtalwar',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Hire Me'),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white, // Background Color
                      ),
                    ),
                    width: 120,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => githubpage(
                                          url:
                                              "https://instagram.com/______saurav______333?igshid=ZDdkNTZiNTM=",
                                        )));
                          },
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => githubpage(
                                          url:
                                              "https://www.linkedin.com/in/saurav-kamtalwar-84b780214/",
                                        )));
                          },
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => githubpage(
                                          url:
                                              "https://github.com/SauravSK1011",
                                        )));

                          },
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      // IconButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => githubpage(
                      //                     url:
                      //                         "https://instagram.com/______saurav______333?igshid=ZDdkNTZiNTM=",
                      //                   )));

                      //     },
                      //     icon: Icon(
                      //       FontAwesomeIcons.twitter,
                      //       color: Colors.white,
                      //     )),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => githubpage(
                                          url:
                                              "https://www.facebook.com/saurav.kamtalwar/",
                                        )));

                          },
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Container(
      //   alignment: Alignment.center,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //         height: 40,
      //       ),
      //       ShaderMask(
      //         shaderCallback: (rect) {
      //           return LinearGradient(
      //             begin: Alignment.center,
      //             end: Alignment.bottomCenter,
      //             colors: [Colors.black, Colors.transparent],
      //           ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      //         },
      //         blendMode: BlendMode.dstIn,
      //         child: Image.asset(
      //           'assests/bnw.png',
      //           height: 400,
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Text(
      //         'Hello I am',
      //         style: TextStyle(color: Colors.white, fontSize: 30),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text('Siddharth Chopra',
      //           style: TextStyle(color: Colors.white, fontSize: 40)),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text(
      //         'Software Developer',
      //         style: TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       SizedBox(
      //         child: TextButton(
      //           onPressed: () {},
      //           child: Text('Hire Me'),
      //           style: TextButton.styleFrom(
      //             primary: Colors.black,
      //             backgroundColor: Colors.white, // Background Color
      //           ),
      //         ),
      //         width: 120,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
