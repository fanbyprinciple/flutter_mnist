import 'package:flutter/material.dart';
import 'package:flutter_mnist/dl_model/classifier.dart';
import 'package:flutter_mnist/pages/upload_page.dart';

// import 'pages/drawing_page.dart';
// import 'package:mnist_net/pages/upload_page.dart';
// import 'package:mnist_net/utilities/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List tabs = [
      UploadImage(),
      const Center(child: Text("Drawing")),
    ];
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        // iconSize: iconSize,
        // selectedFontSize: selectedFontSize,
        // unselectedFontSize: unselectedFontSize,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Image"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart), label: "Draw"),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
// }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     int currentIndex = 0;
//     List tabs = [
//       const Center(child: Text("Image")),
//       const Center(child: Text("Drawing")),
//     ];
//     return Scaffold(
//       body: tabs[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         // iconSize: iconSize,
//         // selectedFontSize: selectedFontSize,
//         // unselectedFontSize: unselectedFontSize,
//         selectedItemColor: Colors.blueAccent,
//         unselectedItemColor: Colors.grey[400],
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.image), label: "Image"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.bubble_chart), label: "Draw"),
//         ],
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//             print(currentIndex);
//           });
//         },
//       ),
//     );
//   } // build
// }
