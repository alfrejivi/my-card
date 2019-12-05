import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String myProfileAvatar =
      'https://media.licdn.com/dms/image/C5603AQF14LIz4kaJYQ/profile-displayphoto-shrink_200_200/0?e=1580947200&v=beta&t=pP3peYB91Bd_gtJM5Wmy0Edl5xcXqobmeZDq4xeZJpI';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(myProfileAvatar),
                    ),
                    Text(
                      'Freddy Jimenez',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Pacifico'),
                    ),
                    Text(
                      'Frontend Engineer',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        color: Colors.blueGrey[300],
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 150,
                child: Divider(
                  color: Colors.blueGrey[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading:
                      Icon(Icons.email, size: 30, color: Colors.blueGrey[100]),
                  title: Text(
                    'alfrejivi@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 1.5,
                        fontSize: 18,
                        color: Colors.blueGrey[300]),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(Icons.phonelink,
                      size: 30, color: Colors.blueGrey[100]),
                  title: Text(
                    'alfrejivi.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 1.5,
                        fontSize: 18,
                        color: Colors.blueGrey[300]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
