import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Profile
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 26, 255, 0),
                  Color.fromARGB(255, 17, 255, 0),
                  Color.fromARGB(255, 9, 170, 0),
                ],
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),

                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                    // Masukkan URL gambar di sini
                    backgroundImage: NetworkImage(
                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvYAXV9ID8vspLFCmvvUBXUEYXH1ierIGwOORjtpdgOg&s=10',
                  ),
                ),

                SizedBox(width: 12),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama Pengguna",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      "My Profile",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Informasi Profile
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "YOUR EMAIL",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "Fawojdewoinkswq142@gmail.com",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                Divider(),

                ListTile(
                  title: Text(
                    "YOUR PASSWORD",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "••••••••••••••••••••••••••••••",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                    ),
                  ),
                ),

                Divider(),

                ListTile(
                  title: Text(
                    "YOUR PHONE",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "+62 5034 234 234",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                Divider(),

                ListTile(
                  title: Text(
                    "CITY, STATE",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "Kudus,Ngawi Jawa Tengah",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                Divider(),

                ListTile(
                  title: Text(
                    "COUNTRY",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    "India",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),

                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}