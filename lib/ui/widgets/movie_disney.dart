part of 'widgets.dart';

class MovieDisney extends StatelessWidget {
  final String name;
  final String title;
  final String imageUrl;
  const MovieDisney({
    Key? key,
    this.name = '',
    this.title = '',
    this.imageUrl = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      width: double.infinity,
      height: 127,
      child: Row(
        children: [
          Container(
            height: 127,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: whiteTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                title,
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              StarCard(),
            ],
          )
        ],
      ),
    );
  }
}
