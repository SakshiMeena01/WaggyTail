import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waggy_tail/chatBot/chatbot_screen.dart';
import 'package:waggy_tail/pages/home_page.dart';
import 'package:waggy_tail/pages/user_Detail.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
            hintText: "Search For Changing Life of Furr Babies",
            hintStyle: GoogleFonts.labrada(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                     Container(
                        width: 800,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: NetworkImage("https://i.pinimg.com/564x/50/1d/df/501ddf8f0ce281044a75d08e523d18eb.jpg"),
                          fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(6.0),),
                        ),
                       child: Stack(
                         children: [
                           Positioned(
                             top: 20.0,
                             right: 15.0,
                             child: Text("Adoption",
                             style: GoogleFonts.laila(fontSize: 18,fontWeight: FontWeight.bold),
                             ),
                           ),
                           Positioned(
                             top: 45.0,
                             right: 20.0,
        
                               child: Text("Stories",
                               style: GoogleFonts.laila(fontWeight: FontWeight.bold, fontSize: 22),),
                           ),
                         ],
                       ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50,),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 140,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                image: DecorationImage(
                                    image: NetworkImage("https://i.pinimg.com/564x/65/a5/d6/65a5d6c511392ea36c3a2a82c7578229.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              left: 30,
                                child: Text("Before and After Story",
                                style: GoogleFonts.laila(fontWeight: FontWeight.bold, fontSize: 12),)),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 140,
                                height: 120,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  image: DecorationImage(
                                      image: NetworkImage("https://i.pinimg.com/564x/38/cb/ed/38cbed6fe8dab5022460763926f0fb98.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 30,
                                child: Text("Personal Adoption Story",
                                  style: GoogleFonts.laila(fontWeight: FontWeight.bold, fontSize: 12),)),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 140,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                  image: DecorationImage(
                                      image: NetworkImage("https://i.pinimg.com/564x/5e/4a/7b/5e4a7b2959417006e5e257699980ff5a.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 30,
                                child: Text("Special Case Highlight",
                                  style: GoogleFonts.laila(fontWeight: FontWeight.bold, fontSize: 12),)),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 140,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),
                              image: DecorationImage(
                                  image: NetworkImage("https://i.pinimg.com/564x/7b/f8/89/7bf8895ae7581d13887c7d2ee16f397f.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                              left: 30,
                              child: Text("Featured Shelter Pets",
                                style: GoogleFonts.laila(fontWeight: FontWeight.bold, fontSize: 12),)),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              width: 160,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                image: DecorationImage(
                                    image: NetworkImage("https://i.pinimg.com/564x/b5/9d/ab/b59dabed748866b3eae3466909d1ed01.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                              left: 30,
                              child: Text("Helping Two Puppies",
                                style: GoogleFonts.laila(fontWeight: FontWeight.bold, fontSize: 12),)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: Colors.greenAccent,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle:
        GoogleFonts.labrada(fontWeight: FontWeight.bold, fontSize: 16),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          if(index==0){
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>HomePage()),
            );
          }
          if(index==2){
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>UserDetails()),
            );
          }
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: 'Account'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatbotScreen()));},
        child: Icon(Icons.chat),
      ),
    );
  }
}
