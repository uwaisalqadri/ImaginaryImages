part of '../home_screen.dart';

class Header extends StatelessWidget {
  static const String profileImageUrl =
      "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQqHpsjsSObnm78NjwdB6iX31ypcIPJQnyuHyOIJ6MHO7HojpB4SPikOMgL_EclZZ1bNsx95kQG654Bc60";

  static const TextStyle boldTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 28,
  );

  static const TextStyle normalTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 55, 12, 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Hi, ',
                  style: GoogleFonts.lato(
                    textStyle: boldTextStyle,
                  ),
                  children: [
                    TextSpan(
                      text: "Muhammad Ali",
                      style: GoogleFonts.lato(
                        textStyle: normalTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: "profileImage",
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      image: profileImageUrl,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text("Showcase your best photo collection to the world!"),
        ],
      ),
    );
  }
}
