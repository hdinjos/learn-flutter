import 'package:flutter/material.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');
const List<String> imageNets = [
  "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRJJudah3m6m21W96KKk4jfLv1wcAOi3xzVL35WRcdwBTX7UwytNCzPYOnzdg0MIQg73U7CLVDDbYPzMW2aWaVLQg",
  "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRhiVaKZdkKkzf152kiVSn5YSSg8XbBSlq6KQzMJ69LsYwLBX_S3BSnRubMgWMTEoxW6ZzfBVbIsAcpcHRBvI3MAA",
  "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSJSyf2R1Y7YiSlcH5vmUS52DsYwpg7-qk0mGEu8MsELsPAiFhtCYv3e6klSVZ6u_dL4PVTPXg626N_VRcYjE4OcA",
  "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTxz01FhaaKa0bkl2NOlxTiHRNnHmxp37VjBnIHOGmFpEeMDBLr1aM-nZEdb_lLdn4DwAqm8f4pEhbiIFTRMZvduQ",
  "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQHIMMvTG-yKCPOdUtepWEQzMfAqYFyufRvYJ0QOm6nKWHRiWbzkfWF1twpToWgk2cUajEti64U5TZIq3XdW2SoyQ"
];

class TourDetail extends StatelessWidget {
  const TourDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var generalFontStyle = TextStyle(fontFamily: "Oxygen");

    return Scaffold(
      // appBar: AppBar(title: const Text("Detail")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/Malioboro-Feature.jpg"),
            Container(
              padding: const EdgeInsets.only(top: 16),
              child: const Text("Jalan Malioboro",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      // fontWeight: FontWeight.w600,
                      fontFamily: "Staatliches")),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Icon(Icons.date_range_outlined),
                        const SizedBox(height: 8.0),
                        Text(
                          "Open Everyday",
                          style: informationTextStyle,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.more_time_rounded),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "24 Hours",
                          style: informationTextStyle,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.currency_exchange_rounded),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Free",
                          style: informationTextStyle,
                        )
                      ],
                    )
                  ],
                )),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
                child: Text(
                  "Jalan Malioboro is a major shopping street in Yogyakarta, Indonesia; the name is also used more generally for the neighborhood around the street. It lies north–south axis in the line between Yogyakarta Kraton and Mount Merapi. This is in itself is significant to many of the local population, the north–south orientation between the palace and the volcano being of importance.",
                  textAlign: TextAlign.center,
                  style: informationTextStyle,
                )),
            SizedBox(
              height: 150,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageNets.map((String item) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(item),
                      ),
                    );
                  }).toList()
                  // <Widget>[
                  //   Padding(
                  //     padding: const EdgeInsets.all(5.0),
                  //     child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(10.0),
                  //       child: Image.network(
                  //           "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRJJudah3m6m21W96KKk4jfLv1wcAOi3xzVL35WRcdwBTX7UwytNCzPYOnzdg0MIQg73U7CLVDDbYPzMW2aWaVLQg"),
                  //     ),
                  //   ),
                  //   Padding(
                  //       padding: const EdgeInsets.all(5.0),
                  //       child: ClipRRect(
                  //         borderRadius: BorderRadius.circular(10.0),
                  //         child: Image.network(
                  //             "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRhiVaKZdkKkzf152kiVSn5YSSg8XbBSlq6KQzMJ69LsYwLBX_S3BSnRubMgWMTEoxW6ZzfBVbIsAcpcHRBvI3MAA"),
                  //       )),
                  //   Padding(
                  //       padding: const EdgeInsets.all(5.0),
                  //       child: ClipRRect(
                  //         borderRadius: BorderRadius.circular(10.0),
                  //         child: Image.network(
                  //             "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSJSyf2R1Y7YiSlcH5vmUS52DsYwpg7-qk0mGEu8MsELsPAiFhtCYv3e6klSVZ6u_dL4PVTPXg626N_VRcYjE4OcA"),
                  //       )),
                  //   Padding(
                  //       padding: const EdgeInsets.all(5.0),
                  //       child: ClipRRect(
                  //         borderRadius: BorderRadius.circular(10.0),
                  //         child: Image.network(
                  //             "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTxz01FhaaKa0bkl2NOlxTiHRNnHmxp37VjBnIHOGmFpEeMDBLr1aM-nZEdb_lLdn4DwAqm8f4pEhbiIFTRMZvduQ"),
                  //       )),
                  // ],
                  ),
            )
          ],
        ),
      ),
    );
  }
}
