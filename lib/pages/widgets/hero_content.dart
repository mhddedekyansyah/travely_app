part of 'widgets.dart';

class HeroContent extends StatelessWidget {
  final List<Place> place = Place.mockPlace();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(mainMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Let's go trip with us!",
            style:
                GoogleFonts.mulish(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(25),
            width: double.infinity,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(place.first.url.toString()),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2.5),
                      width: 45,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.8),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/award.png',
                            width: 21,
                            height: 21,
                          ),
                          Text(
                            '1',
                            style: GoogleFonts.mulish(color: thirdy),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(7),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.6),
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.asset('assets/icons/bookmark.png'),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${place.first.name}',
                        style: GoogleFonts.mulish(fontSize: 18, color: thirdy)),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/location.png',
                          width: 20,
                          height: 20,
                        ),
                        Text('${place.first.city}, ${place.first.country}',
                            style: GoogleFonts.mulish(
                                color: thirdy.withOpacity(.4))),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
