part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SafeArea(
          child: ListView(
            children: [Navbar(), HeroContent(), Category(), const ForYou()],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              height: 90,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/icons/home.png',
                        width: 26,
                        height: 26,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/icons/discovery.png',
                    width: 26,
                    height: 26,
                  ),
                  Image.asset(
                    'assets/icons/bookmark_nav.png',
                    width: 26,
                    height: 26,
                  ),
                  Image.asset(
                    'assets/icons/person.png',
                    width: 26,
                    height: 26,
                  ),
                ],
              )),
        )
      ]),
    );
  }
}
