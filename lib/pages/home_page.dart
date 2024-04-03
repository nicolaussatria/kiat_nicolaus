import 'package:flutter/material.dart';
import 'package:kiat_nicolaus/pages/table_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Column(
            children: [
              Text(
                'SUMMARY',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '01/04/2024 16:30',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 86, 78, 208),
        ),
        backgroundColor: const Color(0xffF8F9FD),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text(
                          "Excl. Kontrak",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text(
                          "Excl. CDE & L300",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const TableData(),
                const TableData(),
                const TableData(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 32,
          fixedColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
          ],
        ));
  }
}
