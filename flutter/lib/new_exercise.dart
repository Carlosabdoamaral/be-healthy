import 'package:flutter/material.dart';

class NewExercisePage extends StatefulWidget {
  const NewExercisePage({Key? key}) : super(key: key);

  @override
  State<NewExercisePage> createState() => _NewExercisePageState();
}

class _NewExercisePageState extends State<NewExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New exercise",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 23,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepPurpleAccent,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 10,),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: TextField(
                    autofocus: true,
                    decoration:
                    InputDecoration(border:
                    InputBorder.none,
                        icon: Icon(Icons.tag),
                        hintText: 'Category'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10,),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(border:
                    InputBorder.none,
                        icon: Icon(Icons.title),
                        hintText: 'Title'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10,),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(border:
                    InputBorder.none,
                        icon: Icon(Icons.directions_walk),
                        hintText: 'Distance'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10,),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: TextField(
                    autofocus: false,
                    decoration:
                    InputDecoration(border:
                    InputBorder.none,
                        icon: Icon(Icons.calendar_month),
                        hintText: 'Date'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        label: Row(
          children: [
            Text(
              "Post",
              style: TextStyle(
              ),
            ),

            SizedBox(width: 20,),

            Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
