part of 'widgets.dart';

class StarCard extends StatelessWidget {
  const StarCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.star,
            size: 18,
            color: starColor,
          ),
          Icon(
            Icons.star,
            size: 18,
            color: starColor,
          ),
          Icon(
            Icons.star,
            size: 18,
            color: starColor,
          ),
          Icon(
            Icons.star,
            size: 18,
            color: starColor,
          ),
          Icon(
            Icons.star,
            size: 18,
            color: starColor,
          ),
        ],
      ),
    );
  }
}
