import 'package:api_request/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userData = [];
  bool isLoading = true;

  @override
  void initState() {
    ApiService().getData().then((value) {
      if (value != null) {
        setState(() {
          isLoading = false;
          userData = value;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            isLoading
                ? const CircularProgressIndicator()
                : ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: userData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name : ${userData[index]['name'].toString()}",
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "DOB : ${userData[index]['dob'].toString()}",
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "AGE : ${userData[index]['age'].toString()}",
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              userData[index]['address'].toString(),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              userData[index]['mobile'].toString(),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              userData[index]['gender'].toString(),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              userData[index]['job_role'].toString(),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              userData[index]['skill'].toString(),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
