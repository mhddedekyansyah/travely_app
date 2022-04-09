part of 'widgets.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  _ForYouState createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  final List<Place> place = Place.mockPlace();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'For you',
            style:
                GoogleFonts.mulish(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 180,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                      onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Detail(
                                    place: place[index],
                                  ))))),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 167,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage(place[index].url.toString()),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(7),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(.6),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Image.asset(
                                        "assets/icons/bookmark${place[index].save! ? '.png' : '_outlined.png'}"))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  place[index].name.toString(),
                                  style: GoogleFonts.mulish(
                                      fontSize: 18, color: thirdy),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/location.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    Text(
                                      '${place[index].city ?? ''} ${place[index].country}',
                                      style: GoogleFonts.mulish(
                                          color: thirdy.withOpacity(.4)),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (_, index) => const SizedBox(
                      width: 10,
                    ),
                itemCount: place.length),
          ),
          const SizedBox(
            height: 120,
          )
        ],
      ),
    );
  }
}
