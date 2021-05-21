
// import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:project_aan/enum.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Soal Pilihan",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int nilai = 0;
  List value = [];
  bool isloading = false;
  
  List<Map<dynamic, dynamic>> questions = [
    {
      0: {
        "question": "1 + 1 ?",
        "answers":[
          {
            "id": 01,
            "sign": 1,
            "title": "A. 2",
            "isanswer": true,
          },
          {
            "id": 02,
            "sign": 1,
            "title": "B. 3",
            "isanswer": false,
          },
          {
            "id": 03,
            "sign": 1,
            "title": "C. 5",
            "isanswer": false
          }
        ]
      },
    }, 
    {
      1: {
        "question": "tag link untuk html adalah ?",
        "answers":[
          {
            "id": 11,
            "sign": 2,
            "title": "A. div",
            "isanswer": false
          },
          {
            "id": 12,
            "sign": 2,
            "title": "B. a=href",
            "isanswer": true
          },
          {
            "id": 13,
            "sign": 2,
            "title": "C. p",
            "isanswer": false
          } 
        ]
      }
    },
    // {
    //   2: {
    //     "question": "Windows 10 rilis tahun ?",
    //     "answers":[
    //       {
    //         "title": "A. 2015",
    //         "isanswer": true,
    //       },
    //       {
    //         "title": "B. 2012",
    //         "isanswer": false,
    //       },
    //       {
    //         "title": "C. 2009",
    //         "isanswer": false,
    //       }
    //     ]
    //   }
    // },
    // {
    //   3: {
    //     "question": "Youtube rilis ?",
    //     "answers":[
    //       {
    //         "title": "A. 2003",
    //         "isanswer": false, 
    //       },
    //       {
    //         "title": "B. 2005",
    //         "isanswer": true,
    //       },
    //       {
    //         "title": "C. 2004",
    //         "isanswer": false,
    //       }
    //     ]
    //   }
    // },
    // {
    //   4: {
    //     "question": "Facebook berdiri tahun ?",
    //     "answers":[
    //       {
    //         "title": "A. 1998",
    //         "isanswer": false, 
    //       },
    //       {
    //         "title": "B. 2000",
    //         "isanswer": false,
    //       },
    //       {
    //         "title": "C. 2004",
    //         "isanswer": true,
    //       }
    //     ]
    //   }
    // },
    // {
    //   5: {
    //     "question": "Amazon berdiri tahun ?",
    //     "answers":[
    //       {
    //         "title": "A. 1998",
    //         "isanswer": false, 
    //       },
    //       {
    //         "title": "B. 2000",
    //         "isanswer": false,
    //       },
    //       {
    //         "title": "C. 1994",
    //         "isanswer": true,
    //       }
    //     ]
    //   }
    // },
    // {
    //   6: {
    //     "question": "Android rilis tahun ?",
    //     "answers":[
    //       {
    //         "title": "A. 2008",
    //         "isanswer": true, 
    //       },
    //       {
    //         "title": "B. 2009",
    //         "isanswer": false,
    //       },
    //       {
    //         "title": "C. 2000",
    //         "isanswer": false,
    //       }
    //     ]
    //   }
    // },
    // {
    //   7: {
    //     "question": "Tanggal dan tahun berapa Instagram berdiri ?",
    //     "answers":[
    //       {
    //         "title": "A. 10 Oktober 2010",
    //         "isanswer": true, 
    //       },
    //       {
    //         "title": "B. 11 Oktober 2008",
    //         "isanswer": false,
    //       },
    //       {
    //         "title": "C. 24 Oktober 2009",
    //         "isanswer": false,
    //       }
    //     ]
    //   }
    // },
    // {
    //   8: {
    //     "question": "Bahasa pemograman Java rilis tahun ?",
    //     "answers":[
    //       {
    //         "title": "A. 1995",
    //         "isanswer": true, 
    //       },
    //       {
    //         "title": "B. 2000",
    //         "isanswer": false,
    //       },
    //       {
    //         "title": "C. 1990",
    //         "isanswer": false,
    //       }
    //     ]
    //   }
    // },
    // {
    //   9: {
    //     "question": "Pendiri Facebook adalah ?",
    //     "answers":[
    //       {
    //         "title": "A. Mark Zuckerberg",
    //         "isanswer": true, 
    //       },
    //       {
    //         "title": "B. Elliot Yamin",
    //         "isanswer": false,
    //       },
    //       {
    //         "title": "C. Bill Gates",
    //         "isanswer": false,
    //       }
    //     ]
    //   }
    // },
  ];
  
  List<Map<String, dynamic>> answered = [];

  @override
  void initState() {
    super.initState();
    isloading = true;    
    Future.delayed(Duration.zero, () {
      for (int i = 0; i < questions.length; i++) {
        setState(() {
          value.add(null);
        }); 
      }
    });
    isloading = false;
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Soal Pilihan",
          style: TextStyle(
            fontSize: 17.0
          ),
        ),
      ),
      body: ListView(
        children: [
          isloading 
          ? Container()
          : ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: questions.length,
            itemBuilder: (BuildContext context, int i) { 
              return Container(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  elevation: .8,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${i + 1}. ${questions[i][i]["question"].toString()}"),
                        SizedBox(height: 8.0),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: questions[i][i]["answers"].length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int z) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadioListTile(
                                  value: int.parse("$i$z"),
                                  groupValue: value[i],
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (index) {
                                    setState(() => value[i]= index);   
                                                         
                                    answered.add({
                                      "id": questions[i][i]["answers"][z]["id"], 
                                      "sign": questions[i][i]["answers"][z]["sign"],
                                      "answered": questions[i][i]["answers"][z]["isanswer"]
                                    });     

                                    // print(answered.where((el) => Set().add(el["sign"])).toList());
                                  },  
                                  title: Text(questions[i][i]["answers"][z]["title"],
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },  
          ),

          Container(
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                // groupBy(answered, (obj) => obj['sign']);
                Map<dynamic, dynamic> mp = {};
                for (var item in answered) {
                  mp[item["sign"]] = item;
                }
                var filteredList = mp.values.toList();
                int falseAnswer = filteredList.where((el) => el["answered"] == false).toSet().length;
                int trueAnswer = filteredList.where((el) => el["answered"] == true).length;
                String point = (filteredList.where((el) => el["answered"] == true).length / questions.length * 100).toStringAsFixed(0);
                showModalBottomSheet(
                  context: context, 
                  builder: (BuildContext context) {
                    return Container(
                      height: 250.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if(int.parse(point) < 70)
                            Container(
                              child: Text("Anda tidak LULUS",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.red
                                ),
                              ),
                            ),
                          if(int.parse(point) >= 70)
                            Container(
                              child: Text("Anda LULUS",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.green
                                ),
                              ),
                            ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text("Nilai Anda : "),
                              ),
                              Container(
                                child: Text(point)
                              )
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text("Jawaban Anda yang benar : "),
                              ),
                              Container(
                                child: Text(trueAnswer.toString())
                              )
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text("Jawaban Anda yang salah : "),
                              ),
                              Container(
                                child: Text(falseAnswer.toString())
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  } 
                );
              },
              child: Text("Submit"),  
            ),
          ),
          
        ],
      ),
    );
  }
}
