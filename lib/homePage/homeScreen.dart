

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:marqueer/marqueer.dart';
import 'package:neopop/neopop.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0 ;
  List<String> title = ["Chef de projet / Data management : Depuis avril 2022",
    "Chargé d’etude et développement : De novembre 2020 à avril 2022",
    "DATA SCIENTIST PFE : De février 2020 à juin 2020"
  ];
  List<String> missions =["• Développement des jobs de détection des bad records.\n"
      "• Analyse des données.\n"
      "• Développement des tableaux de bord de visualisation de la qualité des données.\n"
      "• Gestion d'équipe et de projet.\n"
      "• Mise en place de politiques et de procédures pour protéger les données sensibles et assurer la confidentialité..\n",

      "• Automatisation des reportings réglementaires et des extractions des données.\n"
      "• Developpement des modèles predictifs machine learning.\n"
      "• Répondre aux besoins des échanges entre Finea et BAM (Bank Al-Maghrib) et des envois interbancaire via CFT (SEE).\n"
      "• Visualisation des données.\n"
      "• Maintenance de la plateforme sigmae et de la base de données Finea.",

    "• Mise en place de plusieurs hypothèses.\n"
    "• Création des features et data cleaning.\n"
    "• Réalisation des tests statistiques.\n"
    "• Création du Modèle machine learning .\n"
    "• Création d’une interface graphique regroupant plusieurs fonctionnalités .\n"

  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(



      body: Container(
          padding: EdgeInsets.only(top: 40),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [

                Center(
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: AlignmentDirectional.centerEnd,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'OMAR ESSALEK',
                                  style: GoogleFonts.abel(
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 80,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 33,
                                    ),

                                    Text(
                                      "DATA ",
                                      style: GoogleFonts.getFont('Press Start 2P',
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w100,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                    AnimatedTextKit(
                                      displayFullTextOnTap: true,
                                      repeatForever: true,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'SCEINTIST',
                                          textStyle: GoogleFonts.getFont('Press Start 2P',
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w100,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                        TypewriterAnimatedText(
                                          'ANALYST',
                                          textStyle: GoogleFonts.getFont('Press Start 2P',
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w100,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                        TypewriterAnimatedText(
                                          'MANAGER',
                                          textStyle: GoogleFonts.getFont('Press Start 2P',
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w100,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: NeoPopButton(
                                    color: Colors.white,
                                    rightShadowColor:
                                    Color.fromARGB(255, 135, 163, 177),
                                    bottomShadowColor: Colors.blueGrey,
                                    onTapUp: () {

                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 20),
                                      child: Text(
                                        "TELECHARGER CV",
                                        style: GoogleFonts.gruppo(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],),
                          Positioned(
                              top: -15,
                              right: -100,
                              child: Image(image: AssetImage("assets/me-removebg.png"),
                                height: 300,
                                width: 300,))
                        ],
                      )
                  ),
                ),








                SizedBox(height: 60,),
                SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Marqueer(
                      interaction: false,
                      pps: 32,
                      direction: MarqueerDirection.ltr,
                      restartAfterInteractionDuration:
                      const Duration(seconds: 3),
                      child: Row(
                        children: [

                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/python.webp",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Python",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/Postgre.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "PostgreSql",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/mysql.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "MySQL",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/pentaho.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Pentaho",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/sas.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "SAS",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/metabase.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Metabase",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/powerbi.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "PowerBI",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/tableau.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Tableau",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/sqlserver.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "SQL Server",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                ),
                SizedBox(height: 10,),
                SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Marqueer(
                      interaction: false,
                      pps: 32,
                      direction: MarqueerDirection.rtl,
                      restartAfterInteractionDuration:
                      const Duration(seconds: 3),
                      child: Row(
                        children: [

                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/torch.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "TORCH",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/dart.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Dart",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/java.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "JAVA",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/shell.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Shell",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/centos.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Centos",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/firebase.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Firebase",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/sql.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "SQL",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/scala.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Scala",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            elevation: 3,
                            shadowColor: Color.fromARGB(255, 100, 99, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromARGB(255, 0, 0, 0),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Image.asset(
                                        "assets/hive.png",
                                      ),
                                    )),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                  child: Text(
                                    "Hive",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                    )
                ),
                SizedBox(height: 15,),
                DottedBorder(
                  color: Colors.white,
                  child: Container(),
                )

                ,
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text("   PROJETS", style:GoogleFonts.getFont('Press Start 2P',color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20) ,),),
                        Container(
                          width:250,
                          child: AnimatedTextKit(

                              displayFullTextOnTap: true,
                              repeatForever: true,
                              animatedTexts:
                              [
                                TypewriterAnimatedText(speed: Duration(milliseconds: 100)," :",textStyle: GoogleFonts.getFont('Press Start 2P',color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20)),

                              ]
                          ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [FittedBox(
                        fit: BoxFit.contain,
                        child: Row(
                          children: [
                            Container(
                              height: 400,
                              width: 250,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/ocr.jpg",),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  )),
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.white,
                                            width: 1
                                        ),
                                        bottom: BorderSide(
                                            color: Colors.white,
                                            width: 1
                                        ),
                                        right: BorderSide(
                                            color: Colors.white,
                                            width: 1
                                        )
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    )

                                )
                                ,
                                height: 400,
                                width: 200,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text("OCERISATION DES INFORMATIONS CIN", style: GoogleFonts.abel(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal
                                        ),),

                                      ),
                                      SizedBox(height: 10,),
                                      Text("Ce projet vise à oceriser informations contenues dans les cartes d'identité nationale (CIN), telles que le numéro de CIN, le nom, le prénom, etc. Pour ce faire, le projet est divisé en plusieurs étapes. La première consiste à détecter le numéro de CIN dans les documents à l'aide de l'algorithme YOLO. Ensuite, pour la partie d'OCR (Optical Character Recognition ou Reconnaissance Optique de Caractères), nous avons également utilisé YOLO pour créer un système d'OCR à partir de zéro."
                                          ,style: GoogleFonts.abel(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.normal
                                          ))
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Row(
                            children: [
                              Container(
                                height: 400,
                                width: 250,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/classification.jpeg",),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    )),
                              ),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          ),
                                          bottom: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          ),
                                          right: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          )
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )

                                  )
                                  ,
                                  height: 400,
                                  width: 200,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Text("Automatisation de la classification", style: GoogleFonts.abel(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal
                                          ),),

                                        ),
                                        SizedBox(height: 10,),
                                        Text("Ce projet a pour objectif de concevoir un modèle de machine learning permettant d'identifier la sensibilité des données en analysant leur description."
                                            ,style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                fontStyle: FontStyle.normal
                                            ))
                                      ],
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Row(
                            children: [
                              Container(
                                height: 400,
                                width: 250,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/chatbot.jpg",),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    )),
                              ),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          ),
                                          bottom: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          ),
                                          right: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          )
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )

                                  )
                                  ,
                                  height: 400,
                                  width: 200,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Text("Creation d’un CHATBOT Whatsapp", style: GoogleFonts.abel(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal
                                          ),),

                                        ),
                                        SizedBox(height: 10,),
                                        Text("La création d'un chatbot disponible sur WhatsApp pour assister les clients dans la consultation de leur solde, des opérations en cours et le dépôt de réclamations, en utilisant Python et Twilio.",
                                            style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                fontStyle: FontStyle.normal
                                            ))
                                      ],
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Row(
                            children: [
                              Container(
                                height: 400,
                                width: 250,
                                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/etlprjt.webp",),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    )),
                              ),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          ),
                                          bottom: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          ),
                                          right: BorderSide(
                                              color: Colors.white,
                                              width: 1
                                          )
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )

                                  )
                                  ,
                                  height: 400,
                                  width: 200,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Text("Automatisation des envoies des Relevés Clients", style: GoogleFonts.abel(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal
                                          ),),

                                        ),
                                        SizedBox(height: 10,),
                                        Text("Ce projet commence par la création d'un modèle de relevé client, suivi de l'automatisation de l'envoi des relevés en remplissant ces modèles avec les données spécifiques à chaque client, en utilisant l'outil ETL Pentaho."
                                            ,style: GoogleFonts.abel(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                fontStyle: FontStyle.normal
                                            ))
                                      ],
                                    ),
                                  )
                              )
                            ],
                          ),
                        )
                      ],
                    ),



                  ],
                ),
                SizedBox(height: 20,),
                DottedBorder(
                  color: Colors.white,
                  child: Container(),
                ),
                SizedBox(height: 20,),
                //EXPERIENCES
                Row(
                  children: [
                    Container(
                      child: Text("   EXPERIENCES", style:GoogleFonts.getFont('Press Start 2P',color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20) ,),),
                    Container(

                      child: AnimatedTextKit(

                          displayFullTextOnTap: true,
                          repeatForever: true,
                          animatedTexts:
                          [
                            TypewriterAnimatedText(speed: Duration(milliseconds: 100)," :",textStyle: GoogleFonts.getFont('Press Start 2P',color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20)),

                          ]
                      ),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: 5,
                      height: 500,
                      child:ImageStepper(
                        activeStep: selected,
                        steppingEnabled: true,
                        stepRadius: 30.0,
                        stepColor: Colors.white,
                        activeStepBorderColor: Colors.white,
                        lineLength: 70,
                        lineDotRadius: 4,
                        activeStepBorderPadding: 10,
                        activeStepBorderWidth: 5,

                        activeStepColor: Colors.white,
                        lineColor: Colors.white,
                        direction: Axis.vertical,

                        images: [
                          AssetImage('assets/AWB.jpeg'),
                          AssetImage('assets/finea.jpeg'),
                          AssetImage('assets/pca.jpeg'),

                        ],
                        onStepReached: (value){
                          setState(() {
                            selected =value;
                          });
                        },
                      ),
                    ),),

                    Expanded(
                      flex: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 70,),
                          Text(

                            title[selected],
                            style: GoogleFonts.abel(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.0,



                                )),
                          ),
                          SizedBox(height: 10,),
                          Text(
                              missions[selected],
                              style: GoogleFonts.gruppo(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                  ))
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                Container(
                  height: 200,
                  color: Color(0xff19212b),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(

                            "Portfolio entièrement conçu en utilisant le language DART et le framework Flutter ",


                            style: GoogleFonts.gruppo(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,

                                ))
                        ),
                        TextButton(onPressed: _launchUrl,
                            child: Text(
                              "Cliquer ici pour voir le code source ",
                              style: GoogleFonts.getFont('Press Start 2P',
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.normal,

                                ),
                              ),
                            ),)
                      ],
                    )
                  ),
                )






              ],
            ),
          ),
        ),


    );
  }
  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse('https://github.com/OmarEssalek/code_source_portfolio.git');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
