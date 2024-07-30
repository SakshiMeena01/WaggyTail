import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waggy_tail/pages/home_page.dart';
import 'package:waggy_tail/pages/search_page.dart';
import 'package:waggy_tail/upload_image.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  int currentIndex = 2;
  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'user_account',
          style: GoogleFonts.labrada(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_box_outlined,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                leading: Stack(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.5, color: Colors.white30),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 4,
                            blurRadius: 10,
                            color: Colors.black38.withOpacity(0.2),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: _image != null
                            ? DecorationImage(
                          image: MemoryImage(_image!),
                          fit: BoxFit.cover,
                        )
                            : DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/564x/8b/1f/9f/8b1f9f145889835124f968a6aa82b79f.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          color: Colors.blue,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          color: Colors.white,
                          onPressed: selectImage,
                        ),
                      ),
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '5',
                          style: GoogleFonts.laila(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Posts',
                          style: GoogleFonts.laila(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '100',
                          style: GoogleFonts.laila(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Follower',
                          style: GoogleFonts.laila(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '50',
                          style: GoogleFonts.laila(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Following',
                          style: GoogleFonts.laila(fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              ListTile(
                  title: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                      },
                      child: Text(
                        'Edit Profile',
                        style: GoogleFonts.labrada(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(top: 5,),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 160,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: NetworkImage("https://media.licdn.com/dms/image/D5612AQE8IH7uMozy8A/article-cover_image-shrink_600_2000/0/1710353351007?e=2147483647&v=beta&t=VwxJQhdHDaVKzF0zuAPO349lL_fBCTuxUyvuJL7-hso"),
                            fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 160,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0oN4ah3jr1wlSl80WM_qsTHvgQmKuyAcREl_a9ObmjED4-175OuAJ7GZTRm6whzcHw9A&usqp=CAU"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 160,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: NetworkImage("https://www.shutterstock.com/image-photo/muzzle-red-cat-mans-face-600nw-2262700123.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                      width: 160,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: NetworkImage("https://s3-media0.fl.yelpcdn.com/bphoto/76FJu_mq8f0mN_-p-7YwOQ/1000s.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 160,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: NetworkImage("https://bmkltsly13vb.compat.objectstorage.ap-mumbai-1.oraclecloud.com/cdn.dailymirror.lk/assets/uploads/image_6b7901420b.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 160,
                            height: 120,
                          ),
                        ),
                    ],
                    ),
                  ],
                ),
              ),

              if (currentIndex == 0) HomePage(),
            ],
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
          if(index==1){
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>SearchPage()),
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
