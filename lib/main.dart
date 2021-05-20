import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Soal Pilihan Ganda",
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

  String selectedSoal1;
  String selectedSoal2;
 
  List<Map<String, dynamic>> answered = [];
  
  @override
  Widget build(BuildContext context) {

    List<Map<dynamic, dynamic>> questions = [
    {
      0: {
        "question": "1 + 1 ?",
        "answers":[

          RadioListTile(
            value: "A. 2",
            groupValue: selectedSoal1,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) {
              setState(() {
                selectedSoal1 = val;
                answered.add({
                  "id": 00, 
                  "answered": true
                });
              });
            },
            title: Text("A. 2",
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          RadioListTile(
            value: "B. 3",
            groupValue: selectedSoal1,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) {
             setState(() {
                selectedSoal1 = val;
                answered.add({
                  "id": 01, 
                  "answered": false
                });
              });
            },
            title: Text("B. 3",
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          RadioListTile(
            value: "C. 19",
            groupValue: selectedSoal1,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) {
             setState(() {
                selectedSoal1 = val;
                answered.add({
                  "id": 02, 
                  "answered": true
                });
              });
            },
            title: Text("C. 19",
              style: TextStyle(fontSize: 14.0),
            ),
          ) 

        ]
      },
    }, 
    // {
    //   1: {
    //     "question": "tag link untuk html adalah ?",
    //     "answers":[

    //       RadioListTile(
    //         value: "A. div",
    //         groupValue: selectedSoal2,
    //         controlAffinity: ListTileControlAffinity.leading,
    //         onChanged: (val) {
    //           setState(() {
    //             selectedSoal2 = val;
    //             answered.add({
    //               "id": 10, 
    //               "answered": false
    //             });
    //           });
    //         },
    //         title: Text("A. div",
    //           style: TextStyle(fontSize: 14.0),
    //         ),
    //       ),
    //       RadioListTile(
    //         value: "B. a=href",
    //         groupValue: selectedSoal2,
    //         controlAffinity: ListTileControlAffinity.leading,
    //         onChanged: (val) {
    //           setState(() {
    //             selectedSoal2 = val;
    //             answered.add({
    //               "id": 11, 
    //               "answered": true
    //             });
    //           });
    //         },
    //         title: Text("B. a href",
    //           style: TextStyle(fontSize: 14.0),
    //         ),
    //       ),
    //       RadioListTile(
    //         value: "C. p",
    //         groupValue: selectedSoal2,
    //         controlAffinity: ListTileControlAffinity.leading,
    //         onChanged: (val) {
    //           setState(() {
    //             selectedSoal2 = val;
    //             answered.add({
    //               "id": 12, 
    //               "answered": false
    //             });
    //           });
    //         },
    //         title: Text("C. p",
    //           style: TextStyle(fontSize: 14.0),
    //         ),
    //       )  

    //     ]
    //   }
    // },
    // {
    //   2: {
    //     "question": "Windows 10 rilis tahun ?",
    //     "answers":[
    //       {
    //         "title": "A. 2015",
    //         "isanswer": true,
    //         "selected": false
    //       },
    //       {
    //         "title": "B. 2012",
    //         "isanswer": false,
    //         "selected": false
    //       },
    //       {
    //         "title": "C. 2009",
    //         "isanswer": false,
    //         "selected": false
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
    //         "selected": false
    //       },
    //       {
    //         "title": "B. 2005",
    //         "isanswer": true,
    //         "selected": false
    //       },
    //       {
    //         "title": "C. 2004",
    //         "isanswer": false,
    //         "selected": false
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
    //         "selected": false
    //       },
    //       {
    //         "title": "B. 2000",
    //         "isanswer": false,
    //         "selected": false
    //       },
    //       {
    //         "title": "C. 2004",
    //         "isanswer": true,
    //         "selected": false
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
    //         "selected": false
    //       },
    //       {
    //         "title": "B. 2000",
    //         "isanswer": false,
    //         "selected": false
    //       },
    //       {
    //         "title": "C. 1994",
    //         "isanswer": true,
    //         "selected": false
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
    //         "selected": false
    //       },
    //       {
    //         "title": "B. 2009",
    //         "isanswer": false,
    //         "selected": false
    //       },
    //       {
    //         "title": "C. 2000",
    //         "isanswer": false,
    //         "selected": false
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
    //         "selected": false
    //       },
    //       {
    //         "title": "B. 11 Oktober 2008",
    //         "isanswer": false,
    //         "selected": false
    //       },
    //       {
    //         "title": "C. 24 Oktober 2009",
    //         "isanswer": false,
    //         "selected": false
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
    //         "selected": false
    //       },
    //       {
    //         "title": "B. 2000",
    //         "isanswer": false,
    //         "selected": false
    //       },
    //       {
    //         "title": "C. 1990",
    //         "isanswer": false,
    //         "selected": false
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
    //         "selected": false
    //       },
    //       {
    //         "title": "B. Elliot Yamin",
    //         "isanswer": false,
    //         "selected": false
    //       },
    //       {
    //         "title": "C. Bill Gates",
    //         "isanswer": false,
    //         "selected": false
    //       }
    //     ]
    //   }
    // },
  ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Soal Pilihan Ganda",
          style: TextStyle(
            fontSize: 17.0
          ),
        ),
      ),
      body: ListView(
        children: [
          
          ListView.builder(
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
                        Text(" ${i + 1}. ${questions[i][i]["question"].toString()}"),
                        SizedBox(height: 8.0),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: questions[i][i]["answers"].length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int z) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                questions[i][i]["answers"][z]
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
                List<Map<String, dynamic>> list = answered.where((item) => Set().add(item["id"])).toList();
                int _nilai = list.where((el) => el["answered"] == true).length;
                setState(() => nilai = _nilai);
              },
              child: Text("Proccess"),  
            ),
          ),
          
        ],
      ),
    );
  }
}
