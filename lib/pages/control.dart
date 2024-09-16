import 'package:flutter/material.dart';
import 'package:newbmi/colors.dart';

class control extends StatefulWidget {
  const control({super.key});

  @override
  State<control> createState() => _controlState();
}

class _controlState extends State<control> {
  @override
  int height = 4;
  int weight = 4;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 40,
                                  color: kblue,
                                )),
                            Text(
                              "BMI",
                              style: TextStyle(color: kblue, fontSize: 26),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: kblue, fontSize: 26),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.male,
                                  size: 85,
                                  color: kblue,
                                )),
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              "Weight KG",
                              style: TextStyle(color: kblue, fontSize: 26),
                            ),
                          ],
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: 20,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: ((context, index) {
                                  return Padding(
                                      padding: EdgeInsets.all(12),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            weight = index;
                                          });
                                        },
                                        child: Center(
                                          child: Text(
                                            "$index",
                                            style: TextStyle(
                                              fontSize:
                                                  index == height ? 42 : 24,
                                              color: index == height
                                                  ? kblue
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ));
                                })))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: kblue),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height \n (CM)",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: 20,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: ((context, index) {
                                  return Padding(
                                      padding: EdgeInsets.all(12),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            height = index;
                                          });
                                        },
                                        child: Center(
                                          child: Text(
                                            "$index",
                                            style: TextStyle(
                                              fontSize:
                                                  index == height ? 42 : 24,
                                              color: index == height
                                                  ? kblue
                                                  : Colors.white,
                                            ),
                                          ),
                                        ),
                                      ));
                                })))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              left: MediaQuery.sizeOf(context).width * 2 / 3 - 40,
              child: ElevatedButton(
                child: Text("Calcu"),
                onPressed: () {},
              ))
        ],
      )),
    );
  }
}
