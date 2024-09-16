import 'package:flutter/material.dart';
import 'package:newbmi/colors.dart';
import 'package:newbmi/pages/result.dart';

class control extends StatefulWidget {
  bool ismale;
  control({super.key, required this.ismale});

  @override
  State<control> createState() => _controlState();
}

class _controlState extends State<control> {
  int height = 4;
  int weight = 4;
  @override
  Widget build(BuildContext context) {
    Color mainColor = widget.ismale == true ? kblue : kred;

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
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 40,
                                  color: mainColor,
                                )),
                            Text(
                              "BMI",
                              style: TextStyle(color: mainColor, fontSize: 26),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                widget.ismale == true ? "Male" : "Female",
                                style: TextStyle(fontSize: 26),
                              ),
                              Icon(
                                widget.ismale == true
                                    ? Icons.male
                                    : Icons.female,
                                size: 120,
                                color: mainColor,
                              ),
                              Text(
                                "Weight KG",
                                style: TextStyle(fontSize: 26),
                              ),
                            ],
                          ),
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
                                                  index == weight ? 42 : 24,
                                              color: index == weight
                                                  ? mainColor
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
                  decoration: BoxDecoration(color: mainColor),
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
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: index == height
                                                ? Colors.white
                                                : mainColor,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "$index",
                                              style: TextStyle(
                                                fontSize:
                                                    index == height ? 42 : 24,
                                                color: index == height
                                                    ? mainColor
                                                    : Colors.white,
                                              ),
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
                style: ElevatedButton.styleFrom(backgroundColor: kyello),
                child: Text(
                  "Calcu".toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return result(
                        height: height.toDouble(),
                        weight: weight.toDouble(),
                        isMale: widget.ismale);
                  }));
                },
              ))
        ],
      )),
    );
  }
}
