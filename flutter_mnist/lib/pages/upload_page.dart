import "package:flutter/material.dart";

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        child: Icon(Icons.camera_alt_outlined),


      ),
      appBar: AppBar(backgroundColor: Colors.red,
      title: Text("A reasonable digit classifier"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height:40,),
            Text("Image will be shown below", style: TextStyle(fontSize:20),),
            SizedBox(height:10,),

            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color:Colors.black,
                width: 2.0),
              ),
            ),

            SizedBox(height:45,),
            Text("Current Prediction", style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height:20,),
            Text("5",style:TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
        ],
        ),
      ),


    );
  }
}
