part of 'widgets.dart';
class Category extends StatefulWidget {

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<CategoryModel> categories = CategoryModel.mockCategories();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Categories', style: GoogleFonts.mulish(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),),
          const SizedBox(height: 15,),
          Container(
            height: 54,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(10),
                width: 128,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1, color: secondary)
                ),
                child: Row(
                  children: [
                    Image.asset(categories[index].url.toString(), fit: BoxFit.cover, width: 24, height: 24,),
                    const SizedBox(width: 10,),
                    Text(categories[index].name.toString(), style: GoogleFonts.mulish(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    )),
                  ],
                ),
              ), 
              separatorBuilder: (_, index) => const SizedBox(width: 10,), 
              itemCount: categories.length
            ),
          ),
        ],
      ),
    );
  }
}