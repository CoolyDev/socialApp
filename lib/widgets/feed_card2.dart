import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/models/feed.dart';
import 'package:flutter_social/utils/utils.dart';

class FeedCard2 extends StatelessWidget {
  final Event event;

  const FeedCard2({Key key, this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userImage = Container(
      /*  left: 0,
      top: 15.0,*/
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, userDetailsViewRoute,
            arguments: event.userId),
        child: Hero(
          tag: event.userImage,
          child: Material(
            elevation: 1.0,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                  image: AssetImage(event.userImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    final postDate = Text(
      event.createdAt,
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey.withOpacity(0.6),
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.ellipsis,
    );
    final postCatergory = Text(
      event.category,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.6),
        fontWeight: FontWeight.bold,
      ),
    );
    final userName = Text(
      event.userName,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final descriptionText = Container(
      height: 80.0,
      child: Text(
        event.description,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
        ),
      ),
    );

    final cardContent = SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: ListTile(
                leading: Chip(
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.orangeAccent,
                  label: postCatergory,
                ),
                title: postDate,
                trailing: Wrap(
                  spacing: 2, // space between two icons
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      size: 20,
                    ), // icon-1
                    Text(event.numberInvite.toString()), // icon-2
                  ],
                ),
              ))
            ],
          ),
          // userImage
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Wrap(
                spacing: 1, // space between two icons
                children: <Widget>[
                  userImage // icon-2
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 80.0),
                          child: Text(
                            'Saturday Eve night',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 0.0),
                          child: Icon(Icons.pregnant_woman, color: Colors.blue),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 50.0),
                          child: Text(
                            'Save up to 50% off tickets',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        Container(
                          child: Text(
                            '18-25',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            endIndent: 30,
            indent: 30,
          ),
          Column(
            children: [
              ListTile(
                title: Text(
                  'Barbeque Nation BBQ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                subtitle: Text(
                  '9 Drury Lane,Oldham,OL9 7PH',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                trailing: Text(
                  '5 milles',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            endIndent: 30,
            indent: 30,
          ),
          Column(
            children: [
              ListTile(
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/man1.jpg')),
                  title: Text(
                    'John Smith',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Organisateur',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );

    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(14.0),
              child: Container(
                padding: EdgeInsets.only(top: 5.0, left: 10.0),
                height: double.infinity,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: cardContent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
