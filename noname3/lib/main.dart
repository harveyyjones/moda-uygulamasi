import 'package:flutter/material.dart';
import 'package:noname3/detay.dart';

void main(List<String> args) {
  runApp(const ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.grey,
            controller: tabController,
            tabs: [
              Tab(
                  icon: Icon(
                Icons.accessibility_new_rounded,
                color: Colors.grey,
                size: 17,
              )),
              Tab(
                  icon: Icon(
                Icons.business_sharp,
                color: Colors.grey,
                size: 17,
              )),
              Tab(
                  icon: Icon(
                Icons.flashlight_on_sharp,
                color: Colors.grey,
                size: 17,
              )),
              Tab(
                  icon: Icon(
                Icons.accessible_sharp,
                color: Colors.grey,
                size: 17,
              )),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Moda Uygulaması",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Montserrat",
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.black.withOpacity(0.4),
            ),
          )
        ],
      ),
      // ************** EN ÜSTTEKİ STORY TARZINDAKİ PROFİLLER.**************
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          Container(
            height: 140,
            width: double.infinity, // Container tüm ekrana yayılacak.
            child: ListView(
              // Sola doğru kayan storyler bunun içinde.

              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,

              children: <Widget>[
                listeElemani("lib/assets/assetsforapp/model1.jpeg",
                    "lib/assets/assetsforapp/chanellogo.jpg"),
                SizedBox(width: 17),
                listeElemani("lib/assets/assetsforapp/model2.jpeg",
                    "lib/assets/assetsforapp/louisvuitton.jpg"),
                SizedBox(
                  width: 17,
                ),
                listeElemani("lib/assets/assetsforapp/model3.jpeg",
                    "lib/assets/assetsforapp/chloelogo.png"),
                SizedBox(
                  width: 17,
                ),
                listeElemani("lib/assets/assetsforapp/model1.jpeg",
                    "lib/assets/assetsforapp/chanellogo.jpg"),
                SizedBox(width: 17),
                listeElemani("lib/assets/assetsforapp/model2.jpeg",
                    "lib/assets/assetsforapp/louisvuitton.jpg"),
                SizedBox(
                  width: 17,
                ),
                listeElemani("lib/assets/assetsforapp/model3.jpeg",
                    "lib/assets/assetsforapp/chloelogo.png"),
                SizedBox(
                  width: 17,
                ),
              ],
            ),
          ),
          // **************** KARTLARIN OLDUĞU KISIM *****************
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(24),
              elevation: 4,
              child: Container(
                //height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(
                    16), // Kardın içindeki öğelerin biraz daha içeriden başlaması için.
                child: Column(
                  children: <Widget>[
                    // ********** PROFİL FOTOSU VE İSMİ ************
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "lib/assets/assetsforapp/model3.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 330,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Text(
                                  "Elena",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 11,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 145),
                        const Icon(
                          Icons.more_vert,
                          size: 22,
                          color: Colors.grey,
                        )
                      ],
                    ),

                    SizedBox(height: 15),
                    // ****************** YAZILAR *******************
                    const Text(
                      "Lorem Ipsum is simply dummy text of 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.grey,
                          fontSize: 13),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // ***************** FOTOĞRAFLAR ******************
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detay(
                                    img:
                                        "lib/assets/assetsforapp/modelgrid1.jpeg")));
                          },
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "lib/assets/assetsforapp/modelgrid1.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 96,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "lib/assets/assetsforapp/modelgrid2.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 96,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "lib/assets/assetsforapp/modelgrid3.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // ************** RESİMLERİN ALTINDAKİ İKİ ADET BUTON TARZI KUTUCUK **************
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.4)),
                          child: const Center(
                            child: Text(
                              "# Louis Vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.brown,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.4)),
                          child: const Center(
                            child: Text(
                              "# Chloe",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    const Divider(
                      thickness: 1.1,
                    ),
                    SizedBox(height: 20),
                    Row(children: [
                      Icon(
                        Icons.reply_sharp,
                        color: Colors.grey.withOpacity(0.5),
                        size: 30,
                        textDirection: TextDirection.rtl,
                      ),
                      const SizedBox(width: 7),
                      Text(
                        "1.7k",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 35),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.5),
                        size: 25,
                        textDirection: TextDirection.rtl,
                      ),
                      const SizedBox(width: 7),
                      Text(
                        "325",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 90),
                      IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {},
                        color: Colors.red,
                      ),
                      Text(
                        "24k",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 15,
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(38),
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(logoPath)),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 13,
        ),
        Container(
          height: 25,
          width: 75,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 163, 99, 3),
              borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(color: Colors.white, fontFamily: "Montserrat"),
            ),
          ),
        )
      ],
    );
  }
}
