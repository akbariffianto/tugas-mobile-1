import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/count_characters.dart';
import 'package:flutter_application_1/views/login_page.dart';
import 'package:flutter_application_1/views/odd_even.dart';
import 'package:flutter_application_1/views/datakelompok.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Menu'),
        centerTitle: true,
        backgroundColor: Color(0xFF5B913B)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 3, 
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 1, 
                ),
                itemBuilder: (context, index) {
                  final List<Map<String, dynamic>> menuItems = [
                    {
                      "title": "Data Kelompok",
                      "page": DataKelompokPage(),
                    },
                    {
                      "title": "Calculator",
                      "page": CalculatorPage(),
                    },
                    {
                      "title": "Menghitung karakter digit",
                      "page": CountCharactersPage(),
                    },
                    {
                      "title": "Genap Atau Ganjil?",
                      "page": OddEvenPage(),
                    },
                  ];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => menuItems[index]["page"]),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE8B6),
                        borderRadius: BorderRadius.circular(12), 
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Text(
                        menuItems[index]["title"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20), // Memberi jarak antara GridView dan tombol Logout

            // Tombol Logout di bawah menu, tidak di bawah layar
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Sedikit melengkung
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: const Text(
                    "LogOut",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
