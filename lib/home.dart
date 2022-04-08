import 'package:be_healthy/components/single_train_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  void AppendTrain() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 75,
        title: const Text(
          "BeHealthy",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w200),
        ),
        centerTitle: false,
        backgroundColor: const Color.fromRGBO(1, 10, 38, 1),
      ),
      body: Container(
        color: const Color.fromRGBO(1, 10, 38, 1),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: const [
            SingleTrainComponent(
                title: "Caminhada no parque",
                date: "Apr 05, 2022",
                distancy: "50 km",
                place: "Horto Florestal"),
            SingleTrainComponent(
                title: "Caminhada no parque",
                date: "Apr 05, 2022",
                distancy: "50 km",
                place: "Horto Florestal"),
            SingleTrainComponent(
                title: "Caminhada no parque",
                date: "Apr 05, 2022",
                distancy: "50 km",
                place: "Horto Florestal"),
            SingleTrainComponent(
                title: "Caminhada no parque",
                date: "Apr 05, 2022",
                distancy: "50 km",
                place: "Horto Florestal"),
            SingleTrainComponent(
                title: "Caminhada no parque",
                date: "Apr 05, 2022",
                distancy: "50 km",
                place: "Horto Florestal"),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(131, 150, 208, 1.0),
        child: Row(
          children: [
            const Spacer(),
            IconButton(
                icon: const Icon(
                    Icons.search,
                  color: Color.fromRGBO(1, 10, 38, 1),
                ),
                onPressed: () {}
            ),

            IconButton(
                icon: const Icon(
                    Icons.settings
                ),
                onPressed: () {}
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(
            child: const Icon(
                Icons.add,
              color: Color.fromRGBO(1, 10, 38, 1),
            ),
            onPressed: () {},
            backgroundColor: Colors.white,
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
