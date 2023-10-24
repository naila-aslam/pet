// import 'package:flutter/material.dart';
// import 'package:petlover/utils/text_utils.dart';
//
// class SearchScreen extends StatefulWidget {
//   @override
//   _SearchScreenState createState() => _SearchScreenState();
// }
//
// class _SearchScreenState extends State<SearchScreen> {
//   List<String> Suggestions = [
//     'Best cat food',
//     'Glasses for cats',
//     'Wooden dog food',
//     'Best food for rabbits',
//   ];
//
//   List<String> filteredSuggestions = [];
//
//   void filterSuggestions(String query) {
//     setState(() {
//       filteredSuggestions = Suggestions.where((suggestion) =>
//           suggestion.toLowerCase().contains(query.toLowerCase())).toList();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.only(left: 4.0, right: 4.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 12.0, vertical: 10),
//                       child: TextField(
//                         onChanged: (value) {
//                           filterSuggestions(value);
//                         },
//                         decoration: InputDecoration(
//                           hintText: 'Food for rabbit',
//                           hintStyle: TextStyle(color: Colors.grey),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.0),
//                             borderSide: BorderSide(color: Colors.grey),
//                           ),
//                           prefixIcon: Icon(Icons.search, color: Colors.black),
//                         ),
//                       ),
//                     ),
//                   ),
//                   TextUtils().normal14("Cancel", color: Colors.blueAccent),
//                 ],
//               ),
//               SizedBox(height: 16.0),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10.0),
//                 child: TextUtils()
//                     .normal16("Suggestions", fontWeight: FontWeight.bold),
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: filteredSuggestions.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(filteredSuggestions[index]),
//                       onTap: () {},
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:petlover/utils/text_utils.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> Suggestions = [
    'Best cat food',
    'Glasses for cats',
    'Wooden dog food',
    'Best food for rabbits',
  ];

  List<String> filteredSuggestions = [];

  void filterSuggestions(String query) {
    setState(() {
      filteredSuggestions = Suggestions.where((suggestion) =>
          suggestion.toLowerCase().contains(query.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 4.0, right: 8.0, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 10),
                      child: TextField(
                        onChanged: (value) {
                          filterSuggestions(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Food for rabbit',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .grey), // Set the border color to gray
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .grey), // Set the border color to gray
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  TextUtils().normal14("Cancel", color: Colors.blueAccent),
                ],
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextUtils()
                    .normal16("Suggestions", fontWeight: FontWeight.bold),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: filteredSuggestions.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(filteredSuggestions[index]),
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
