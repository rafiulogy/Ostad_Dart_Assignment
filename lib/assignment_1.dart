import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class responsiveApp extends StatefulWidget {
  const responsiveApp({super.key});

  @override
  State<responsiveApp> createState() => _responsiveAppState();
}

class _responsiveAppState extends State<responsiveApp> {
  List<String> images = [
    "https://www.worldometers.info/img/flags/af-flag.gif",
    "https://www.worldometers.info/img/flags/al-flag.gif",
    "https://www.worldometers.info/img/flags/ag-flag.gif",
    "https://www.worldometers.info/img/flags/an-flag.gif",
    "https://www.worldometers.info/img/flags/ao-flag.gif",
    "https://www.worldometers.info/img/flags/ar-flag.gif",
    "https://www.worldometers.info/img/flags/as-flag.gif",
    "https://www.worldometers.info/img/flags/au-flag.gif",
    "https://www.worldometers.info/img/flags/aj-flag.gif",
    "https://www.worldometers.info/img/flags/bf-flag.gif",
    "https://www.worldometers.info/img/flags/ba-flag.gif",
    "https://www.worldometers.info/img/flags/bg-flag.gif",
    "https://www.worldometers.info/img/flags/bb-flag.gif",
    "https://www.worldometers.info/img/flags/bo-flag.gif",
    "https://cdn.britannica.com/07/7207-050-9EFE28B7/Flag-Belize.jpg",
    "https://www.worldometers.info/img/flags/bn-flag.gif",
    "https://www.worldometers.info/img/flags/bt-flag.gif",
    "https://www.worldometers.info/img/flags/bl-flag.gif",
  ];

  List<String> names = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Argentina",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double gridViewColumnCount = screenSize.width <768 ? 2 : 1024 >= screenSize.width && screenSize.width >= 768 ? 3 : screenSize.width>= 1024 ? 4 : 2;


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Responsive App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridViewColumnCount.toInt(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Card(

              child: Column(
                children: [
                  Image.network(images[index], fit: BoxFit.cover),

                  Text(
                    names[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
