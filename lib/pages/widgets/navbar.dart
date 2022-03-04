part of 'widgets.dart';

class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(mainMargin),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 54,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: secondary, width: 1.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/icons/search.png', width: 26, height: 26,),
                      const SizedBox(width: 5,),
                      Text('Search ...', style: GoogleFonts.mulish(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: secondary
                      ),),
                    ],
                  ),
                  Image.asset('assets/icons/voice.png',width: 26, height: 24,)
                ],
              ),
            ),
          ),
          const SizedBox(width: 10,),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/user.png'),
          )
        ],
      ),
    );
  }
}