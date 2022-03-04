part of 'pages.dart';

class Detail extends StatelessWidget {
  final Place? place;
  Detail({this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children : [
              Container(
              padding: const EdgeInsets.only(top: 45, left: 25, right: 25),
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(place!.url.toString()),
                  fit: BoxFit.cover,
                )
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.7),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Image.asset('assets/icons/arrow.png'),
                      ),
                    ),
            ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.7),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.asset('assets/icons/share.png'),
                    ),
            ),
                ],
              ),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
              height: 480,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Stack(
                children : [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 60, 15, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(place!.name.toString(), style: GoogleFonts.mulish(
                                fontSize: 24,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                              Row(
                            children: [
                              Image.asset('assets/icons/location.png', width: 20, height: 20, color: secondary.withOpacity(.6),),
                              Text('${place!.city ?? ''}, ${place!.country}', style: GoogleFonts.mulish(
                              color: secondary.withOpacity(.6),
                              fontSize: 18
                              )
                            ),
                            ])
                            ],
                          ),
                          Text('\$${place!.price ?? '0'}', style: GoogleFonts.mulish(
                              color: primary,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/icons/rating.png', width: 21, height:21),
                                  Text(place!.rating.toString(), style: GoogleFonts.mulish(
                              color: primary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                              ))
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Text('2k reviews', style: GoogleFonts.mulish(
                              color: secondary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                              ))
                            ],
                          ),
                          Container(
                            height: 70,
                            child: const VerticalDivider(
                              color: secondary,
                              thickness: 1,
                              indent: 20,
                              endIndent: 15,
                              width: 10,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/icons/duration.png', width: 21, height:21),
                                  Text('3h', style: GoogleFonts.mulish(
                                    color: primary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                    ))
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Text('Duration', style: GoogleFonts.mulish(
                                color: secondary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                                ))
                            ],
                          ),
                          Container(
                            height: 70,
                            child: const VerticalDivider(
                              color: secondary,
                              thickness: 1,
                              indent: 20,
                              endIndent: 15,
                              width: 10,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/icons/weather.png', width: 21, height:21),
                                  Text('28C', style: GoogleFonts.mulish(
                                    color: primary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                    ))
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Text(place!.weather.toString(), style: GoogleFonts.mulish(
                              color: secondary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                              ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Description', style: GoogleFonts.mulish(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Text('Kutai Beach is one of the most famous.\nspot of Bali, Major travel sites use it\'s photo to advertise Bali and even sometimes Indonesia', style: GoogleFonts.mulish(
                          fontSize: 16,
                          color: secondary,
                          height: 1.5
                        ),
                        textAlign: TextAlign.justify,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 90,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.white, Colors.white.withOpacity(.1)]
                              )
                            ),
                        ))
                        ]
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: secondary)
                        ),
                        child: Image.asset('assets/icons/bookmark_black.png'),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                            primary: primary
                          ),
                          child: Text('Book Now', style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700
                          ),),
                        ))
                    ],
                  ),
                )
                ]
              ),
            ),
          )
        ]
      ),
    );
  }
}