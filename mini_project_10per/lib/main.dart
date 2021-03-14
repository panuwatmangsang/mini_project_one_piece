import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'One Piece';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),backgroundColor: Colors.green[400]),
      body: ListView(
        padding: const EdgeInsets.all(32),
        children:[
          Image.network('https://assets.brandinside.asia/uploads/2017/07/one-piece-cover.png',
            width: 400,
            height: 240,
          ),
          Text(
            'One Piece !!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red[500],  
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      backgroundColor: Colors.green[300],
      
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Welcome To One Piece'),
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),
            
            ListTile(
              title: Text('Admin'),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => Admin()
                ));
              },
            ),
            ListTile(
              title: Text('Images'),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => Images()
                ));
              },
            ),
            ListTile(
              title: Text('Layout'),
              onTap: () {
                 Navigator.push(context,MaterialPageRoute(
                  builder: (context) => Layout()
                ));
              },
            ),
            ListTile(
              title: Text('Video Clip'),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen()
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////// Admin Page //////////////////////////////////////////////////////
class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin',),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          children: [
            Text('ชื่อ-นามสกุล : นาย ภาณุวัฒน์ มังสังข์',
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),
            Text('Full Name : Mr. Panuwat Mangsang',
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Student ID : 61320260',
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.green[300],
    );
  }
}

////////////////////////////////////////////// Image Page ////////////////////////////////////////////////////
class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'One Piece Images';
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.green[300],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          children: <Widget>[
            Image.network('https://assets.brandinside.asia/uploads/2017/07/one-piece-cover.png',
              width: 400,
              height: 240,
            ),
            Image.network('https://cheezelooker.com/file_managers/uploads/file_managers/source/2020%20DAILY%20CULTURE/APRIL/WEEK%204/ONE%20PIECE%20NETFLIX%20RELEASE%20DATE%20REVEALED/https___hypebeast.com_image_2020_01_netflix-orders-one-piece-live-action-series-tomorrow-studios-info-001.jpg',
              width: 400,
              height: 240,
            ),
            Image.network('https://animesiam.com/wp-content/uploads/2019/08/%E0%B8%A7%E0%B8%B1%E0%B8%99%E0%B8%9E%E0%B8%B5%E0%B8%8A-onepiece-1024x590-1.jpg',
              width: 400,
              height: 240,
            ),
            Image.network('https://www.mangozero.com/wp-content/uploads/2019/04/one-piece-2019-web.jpg',
              width: 400,
              height: 240,
            ),
            Image.network('https://cdn.majorcineplex.com/uploads/content/images/onepiece3%281%29.jpg',
              width: 400,
              height: 240,
            ),
            Image.network('https://www.thailandboxoffice.com/wp-content/uploads/2019/09/onepiece23.jpg',
              width: 400,
              height: 240,
            ),
            Image.network('https://www.catdumb.com/wp-content/uploads/2016/09/1-137.jpg',
              width: 400,
              height: 240,
            ),
            Image.network('https://static.thairath.co.th/media/dFQROr7oWzulq5FZYSgOLp7PKj4egPGY5tcCY8hQCvTLxIoycR3byOEOlC04udPWN4c.jpg',
              width: 400,
              height: 240,
            ),
          ],
        )
      );
  }
}

//////////////////////////////////////////////////////// Layout Page ////////////////////////////////////////////////
class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.green[800], Icons.call, 'CALL'),
        _buildButtonColumn(Colors.green[800], Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.green[700], Icons.share, 'SHARE'),
      ],
      ),
    );
    var title = 'Layout';
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.green[300],
        ),
        body: ListView(
          children: [
            Image.network('https://assets.brandinside.asia/uploads/2017/07/one-piece-cover.png',
              width: 400,
              height: 240,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        )
    );
  
}

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Klee Snow',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Text(
              'Character , Element:Fire',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('4 stars'),
    ],
  ),
);
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    '\n this is kwaii in the world',
    softWrap: true,
  ),
);

/////////////////////////////////////// Video Clip /////////////////////////////////////////////////
class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Clips'),
      ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}