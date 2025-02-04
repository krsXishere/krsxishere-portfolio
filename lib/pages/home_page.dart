import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:krsxishere_portfolio/common/theme.dart';
import 'package:krsxishere_portfolio/widgets/button_navigate_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krsxishere_portfolio/widgets/portfolio_widget.dart';
import '../widgets/cutter_image_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();
  late Future<ListResult> futureFiles;
  GlobalKey homeKey = GlobalKey();
  GlobalKey aboutKey = GlobalKey();
  GlobalKey skillsKey = GlobalKey();
  GlobalKey portfolioKey = GlobalKey();
  GlobalKey certificateKey = GlobalKey();

//   Future downloadCV(Reference reference) async {
//   final directory = await get;
// }

  _launchUrl(String link) async {
    final Uri url = Uri.parse(link);

    if (!await launchUrl(url)) {
      throw Exception("Gagal membuka $url");
    }
  }

  @override
  void initState() {
    futureFiles = FirebaseStorage.instance.ref("/cv").listAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tertiary600,
        elevation: 0,
        titleSpacing: 100,
        title: Text(
          "Krisna Purnama",
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
            color: tertiary200,
          ),
        ),
        actions: [
          ButtonNavigateWidget(
            text: "Home",
            paddingRight: 0,
            backgroundColor: tertiary500,
            onPressed: () {
              Scrollable.ensureVisible(
                homeKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
              );
            },
          ),
          ButtonNavigateWidget(
            text: "About Me",
            paddingRight: 0,
            backgroundColor: tertiary500,
            onPressed: () {
              Scrollable.ensureVisible(
                aboutKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
              );
            },
          ),
          ButtonNavigateWidget(
            text: "Skills",
            paddingRight: 0,
            backgroundColor: tertiary500,
            onPressed: () {
              Scrollable.ensureVisible(
                skillsKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
              );
            },
          ),
          ButtonNavigateWidget(
            text: "Portfolio",
            paddingRight: 0,
            backgroundColor: tertiary500,
            onPressed: () {
              Scrollable.ensureVisible(
                portfolioKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
              );
            },
          ),
          ButtonNavigateWidget(
            text: "Certificates",
            paddingRight: 0,
            backgroundColor: tertiary500,
            onPressed: () {
              Scrollable.ensureVisible(
                certificateKey.currentContext!,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
              );
            },
          ),
          ButtonNavigateWidget(
            text: "Download CV",
            paddingRight: 10,
            backgroundColor: tertiary700,
            onPressed: () {
              downloadCV();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  tertiary700,
                  black,
                ],
                begin: const FractionalOffset(1.0, 0.0),
                end: const FractionalOffset(0.0, 0.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  Row(
                    key: homeKey,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/hexagon.svg",
                            color: tertiary700,
                            width: 500,
                            height: 500,
                          ),
                          SvgPicture.asset(
                            "assets/svg/skewed.svg",
                            color: white,
                            width: 300,
                            height: 300,
                          ),
                          Image.asset("assets/png/ikis.png"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 80,
                        ),
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hai",
                                style: primaryTextStyle.copyWith(
                                  fontSize: 50,
                                  fontWeight: semiBold,
                                  color: grey400,
                                ),
                              ),
                              Text(
                                "I'm Krisna",
                                style: primaryTextStyle.copyWith(
                                  fontSize: 40,
                                  fontWeight: regular,
                                  color: white,
                                ),
                              ),
                              Text(
                                "Fullstack Developer | Flutter Developer |\nBackend Developer | Desktop .NET Developer\n4 Years Experience as a Freelancer",
                                textAlign: TextAlign.left,
                                style: primaryTextStyle.copyWith(
                                  fontSize: 14,
                                  color: Colors.white54,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {
                                  try {
                                    _launchUrl(
                                        "mailto:krisnapurnama28@gmail.com");
                                  } catch (e) {
                                    Exception(e);
                                  }
                                },
                                child: Text(
                                  "Let's Talk",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    color: white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _launchUrl(
                                          "https://www.linkedin.com/in/krisna-purnama-b58058294?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app");
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/icons8-linkedin.svg",
                                      color: white,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _launchUrl(
                                          "https://www.instagram.com/krsxishere?igsh=aGltMnl5aXZudnlw");
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/icons8-instagram.svg",
                                      color: white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _launchUrl(
                                          "https://github.com/krsXishere");
                                    },
                                    child: SvgPicture.asset(
                                      "assets/svg/github-mark-white.svg",
                                      width: 48,
                                      height: 46,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    key: aboutKey,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "About Me",
                            style: primaryTextStyle.copyWith(
                              fontSize: 50,
                              fontWeight: semiBold,
                              color: grey400,
                            ),
                          ),
                          Text(
                            "I am an informatics engineering student who works freelance.\nI have skills in developing mobile applications specially in Android devices with the Flutter framework,\ndeveloping APIs and WEB using Laravel, Firebase, .NET C#, Java.",
                            textAlign: TextAlign.center,
                            style: primaryTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: regular,
                              color: white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Column(
                    key: skillsKey,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "My Skills",
                        style: primaryTextStyle.copyWith(
                          fontSize: 50,
                          fontWeight: semiBold,
                          color: grey400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        height: 300,
                        child: GridView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 30,
                            childAspectRatio: 4,
                            crossAxisSpacing: 20,
                          ),
                          children: [
                            GestureDetector(
                              onTap: () {
                                _launchUrl("https://dart.dev/");
                              },
                              child: SvgPicture.asset(
                                "assets/svg/dartlang-icon.svg",
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchUrl("https://flutter.dev/");
                              },
                              child: SvgPicture.asset(
                                "assets/svg/flutterio-icon.svg",
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchUrl("https://firebase.google.com/");
                              },
                              child: SvgPicture.asset(
                                "assets/svg/firebase-icon.svg",
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchUrl("https://laravel.com/");
                              },
                              child: SvgPicture.asset(
                                "assets/svg/laravel-2.svg",
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchUrl(
                                    "https://dotnet.microsoft.com/en-us/");
                              },
                              child: SvgPicture.asset(
                                "assets/svg/dotnet-logo.svg",
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchUrl("https://www.java.com/en/");
                              },
                              child: SvgPicture.asset(
                                "assets/svg/java-icon.svg",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Column(
                    key: portfolioKey,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "My Portfolio",
                        style: primaryTextStyle.copyWith(
                          fontSize: 50,
                          fontWeight: semiBold,
                          color: grey400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FlutterCarousel(
                        options: FlutterCarouselOptions(
                          autoPlay: true,
                          height: 400.0,
                          showIndicator: true,
                          floatingIndicator: false,
                          slideIndicator: CircularSlideIndicator(),
                        ),
                        items: const [
                          PortfolioWidget(
                            image: "assets/png/devin-mockup.png",
                            portfolioDescription: "Device Inventory",
                          ),
                          PortfolioWidget(
                            image: "assets/png/makerindo-mockup.png",
                            portfolioDescription: "Makerindo Mobile App",
                          ),
                          PortfolioWidget(
                            image: "assets/png/deqr-mockup.png",
                            portfolioDescription: "DeQR - QR Generator",
                          ),
                          PortfolioWidget(
                            image: "assets/png/deprofile-mockup.png",
                            portfolioDescription: "DeProfile Mobile App",
                          ),
                          PortfolioWidget(
                            image: "assets/png/celerry-mockup.png",
                            portfolioDescription: "Celerry.art Mobile App",
                          ),
                          PortfolioWidget(
                            image: "assets/png/fcd-mockup.png",
                            portfolioDescription: "Flashcard Digital",
                          ),
                          PortfolioWidget(
                            image: "assets/png/gadai-express-mockup.png",
                            portfolioDescription:
                                "Gadai Express - Simulasi Pendanaan",
                          ),
                          PortfolioWidget(
                            image: "assets/png/matchapp-mockup.png",
                            portfolioDescription: "Match App",
                          ),
                          PortfolioWidget(
                            image: "assets/png/toko-saya-mockup.png",
                            portfolioDescription: "Toko Saya",
                          ),
                          PortfolioWidget(
                            image: "assets/png/epel-siswa.png",
                            portfolioDescription:
                                "e-pelita: siswa SD-SMP\nTelah digunakan oleh Ribuan Pengguna di Play Store",
                          ),
                          PortfolioWidget(
                            image: "assets/png/epel-guru.png",
                            portfolioDescription:
                                "e-pelita: guru SD-SMP\nTelah digunakan oleh Ribuan Pengguna di Play Store",
                          ),
                          PortfolioWidget(
                            image: "assets/png/tb-cr-2.png",
                            portfolioDescription: "TB CR 2: Roaster Digital",
                          ),
                          PortfolioWidget(
                            image: "assets/png/stone-classifier.png",
                            portfolioDescription:
                                "Stone Classifier: Identifikasi Jenis Batuan",
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Column(
                    key: certificateKey,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "My Certificates",
                        style: primaryTextStyle.copyWith(
                          fontSize: 50,
                          fontWeight: semiBold,
                          color: grey400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FlutterCarousel(
                        options: FlutterCarouselOptions(
                          autoPlay: true,
                          height: 400.0,
                          showIndicator: true,
                          floatingIndicator: false,
                          slideIndicator: CircularSlideIndicator(),
                        ),
                        items: const [
                          CutterImageWidget(
                            image: "assets/png/mpr-ri-4-pilar-1.png",
                          ),
                          CutterImageWidget(
                            image: "assets/png/makerindo.png",
                          ),
                          CutterImageWidget(
                            image: "assets/png/lks-kab.png",
                          ),
                          CutterImageWidget(
                            image: "assets/png/lks-prov.png",
                          ),
                          CutterImageWidget(
                            image: "assets/png/scf-ai.png",
                          ),
                          CutterImageWidget(
                            image: "assets/png/data-scientist-1.png",
                          ),
                          CutterImageWidget(
                            image: "assets/png/devfest-1.png",
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
