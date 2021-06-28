part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTab = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: bgColor,
          ),
          SafeArea(
            child: Container(
              color: bgColor,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: defaultMargin,
                      left: defaultMargin,
                      right: isTab == true ? defaultMargin : 0,
                    ),
                    child: isTab == true
                        ? Container(
                            width: double.infinity,
                            height: 50,
                            padding: EdgeInsets.only(
                              left: 20,
                              top: 8,
                              right: 8,
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xFF282A3E),
                              boxShadow: [],
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Type Your Favorite Movie',
                                      hintStyle: whiteTextStyle,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isTab = false;
                                    });
                                  },
                                  child: Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/btn_searchMedia.png')),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Moviez',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 28,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Text(
                                    'Watch much easier',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isTab = true;
                                  });
                                },
                                child: isTab == true
                                    ? SizedBox()
                                    : Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/btn_search.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                  ),

                  //NOTE : MOVIE IMAGE
                  Container(
                    margin: EdgeInsets.only(
                      top: 28,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MovieCard(
                            name: 'Jhon Wick 4',
                            titile: 'Action,Crime',
                            imageUrl: 'assets/image1.png',
                          ),
                          MovieCard(
                            name: 'Jhon Wick 4',
                            titile: 'Action,Crime',
                            imageUrl: 'assets/image2.png',
                          ),
                          SizedBox(
                            width: defaultMargin,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //NOTE : DISNEY
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'From Disney',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        MovieDisney(
                          name: 'Mulan Session',
                          title: 'History, War',
                          imageUrl: 'assets/disney1.png',
                        ),
                        MovieDisney(
                          name: 'Beauty & Beast',
                          title: 'Sci-Fiction',
                          imageUrl: 'assets/disney2.png',
                        ),
                        MovieDisney(
                          name: 'The Dark II',
                          title: 'Horror',
                          imageUrl: 'assets/disney3.png',
                        ),
                        MovieDisney(
                          name: 'The Dark Knight',
                          title: 'Heroes',
                          imageUrl: 'assets/disney4.png',
                        ),
                        MovieDisney(
                          name: 'The Dark Tower',
                          title: 'Action',
                          imageUrl: 'assets/disney5.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
