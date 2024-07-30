import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waggy_tail/pages/user_Detail.dart';
import 'package:waggy_tail/pages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded),
        title: TextFormField(decoration: InputDecoration(
          hintText: " Search Some Happy Stories",
          hintStyle: GoogleFonts.labrada(fontWeight: FontWeight.bold, fontSize: 16),
        ),),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row( // First row with image and text
              children: [
                Expanded(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ1Lg6ESZ0FiAHInMuNQveH9v64CWUkAHdog&s",
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Rescued from neglect: a shopkeeper's cage becomes a gateway to freedom for countless cats, now nourished and cared for.",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Row( // Second row with image and text (repeat structure)
              children: [
        
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "From abandonment to a new beginning: this dog finds love again with new parents after being left behind by his old family, now living abroad.",
                    ),
                  ),
                ),
                Expanded(
                  child: Image.network(
                    "https://www.edinburghnews.scotsman.com/webimg/b25lY21zOmU0NTEwMDUwLTcyZTEtNGQ2NS05MmE2LThhMmI4YmMzM2QzNDowYmE1ODkyNy0yZGUzLTQ1NTEtYTY5Yi01ZTg4NmJhODhhZTE=.jpg?crop=3:2,smart&trim=&width=640&quality=65&enable=upscale",
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Row( // Second row with image and text (repeat structure)
              children: [
                Expanded(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw2lTZxyVTDibcPAW5gHw4zrUvxE9s_orZnw&s",
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "After dedicated care and rehabilitation, the once troubled dog now thrives. Witness the transformative power of compassion.",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Row(
              children: [
        
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "Rescued from the quake's aftermath: a frightened cat finds safety. Help us continue saving lives."
                    ),
                  ),
                ),
                Expanded(
                  child: Image.network(
                    "https://d1jyxxz9imt9yb.cloudfront.net/medialib/3373/image/s768x1300/DRRR202302_HouseOfCatsErnesto_025_396900_edited.jpg",
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Image.network(
                    "https://www.liveabout.com/thmb/FcibFJ3ffqS2-O1HZ5pfup4TaO0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-660747797-5892560b3df78caebcbf9e0d.jpg",
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "This dog's transformation is proof: compassion can mend even the most wounded souls. Look at them flourish now!",
                    ),
                  ),
                ),
              ],
            ),
          ],
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
          if(index==1){
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>SearchPage()),
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
        onPressed: (){},
        child: Icon(Icons.add),
      )
    );
  }
}
