import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int totalPage = 4;

  void onScroll() {
    print('test scroll');
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePageWidget(
              page: 1,
              imagePath: 'assets/image/audi.jpg',
              title: 'Audi',
              description:
                  'Икона автомобильного мира: Audi - это символ роскоши и инноваций, который всегда в центре внимания и легко узнаваем в любом уголке мира.'),
          makePageWidget(
              page: 2,
              imagePath: 'assets/image/rover.jpg',
              title: 'Range Rover',
              description:
                  'Величественный Range Rover. Этот автомобиль стал настоящей "легендой дороги", но оставаясь верой и правдой британского мастерства. '),
          makePageWidget(
              page: 3,
              imagePath: 'assets/image/bmw.jpg',
              title: 'BMW',
              description:
                  'Превосходный баварский символ. Он возвышает немецкую инженерию и дизайн. В мире автомобилей и стиля он узнаваем, как ничто другое.'),
          makePageWidget(
              page: 4,
              imagePath: 'assets/image/mclaren.jpg',
              title: 'McLaren',
              description:
                  'Интересно, что бренд начал свою историю как гоночная команда, и только потом занялся производством удивительных спорткаров.'),
        ],
      ),
    );
  }
}

Widget makePageWidget({imagePath, title, description, page}) {
  int totalPage = 4;
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2)
        ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  page.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ),
                      const Text(
                        '4.9',
                        style: TextStyle(color: Colors.white70),
                      ),
                      const Text(
                        ' (12350)',
                        style: TextStyle(color: Colors.white38, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      description,
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.9,
                          fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'ПОДРОБНЕЕ',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
