part of 'widgets.dart';

class MovieCard extends StatelessWidget {
  final String name;
  final String titile;
  final String imageUrl;
  const MovieCard({
    Key? key,
    this.name = '',
    this.titile = '',
    this.imageUrl = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  Text(
                    name,
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    titile,
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
              StarCard(),
            ],
          ),
        ],
      ),
    );
  }
}
