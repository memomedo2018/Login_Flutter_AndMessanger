import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatefulWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        automaticallyImplyLeading: false,
        title: Container(
          child: Container(
            margin: EdgeInsetsDirectional.only(end: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/205393737_3909661535799272_8099165863434108953_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=bkjGNarokTYAX9m427q&_nc_ht=scontent.fcai21-4.fna&oh=caef8794d387505a59c5f03f76783d24&oe=611FFF85'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Chats",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
              size: 20,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(end: 20),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: Icon(
                Icons.edit,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 7,
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return itemBuilders();
                },
                itemCount: 5,
              ),
            ),
            Container(
              child: Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return storyItemBuilder();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemBuilders() {
  return Container(
    margin: EdgeInsetsDirectional.only(start: 5),
    width: 80,
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/205393737_3909661535799272_8099165863434108953_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=bkjGNarokTYAX9m427q&_nc_ht=scontent.fcai21-4.fna&oh=caef8794d387505a59c5f03f76783d24&oe=611FFF85'),
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Mohamed Shaker Abdelhalim",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget storyItemBuilder() {
  return ListTile(
    leading: CircleAvatar(
      radius: 30.0,
      backgroundImage: NetworkImage(
          'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/187032415_3798842746881152_2867750486846140066_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=174925&_nc_ohc=ZWwJBPF9PX4AX-FrwOc&_nc_ht=scontent.fcai21-4.fna&oh=e90ced4d7b0706a5b41d5b59f9ea1cbc&oe=6121356C'),
      backgroundColor: Colors.transparent,
    ),
    title: Text('Mohamed shaker'),
    subtitle: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('This is shaker\'s designs'),
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 3,
        ),
        Text('02:00 pm'),
      ],
    ),
  );
}
