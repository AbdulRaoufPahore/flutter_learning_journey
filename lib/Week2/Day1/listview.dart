import 'package:flutterlearnplan/const/export.dart';

class ListviewDay8 extends StatelessWidget {
  ListviewDay8({super.key});
  final List<Map<String, String>> contacts = [
    {"name": "Abdul Raouf", "phone": "+92 300 1234567"},
    {"name": "Ali Khan", "phone": "+92 301 9876543"},
    {"name": "Fatima", "phone": "+92 302 5554443"},
    {"name": "Ayesha", "phone": "+92 303 1112223"},
    {"name": "Hamza Ahmed", "phone": "+92 304 2223334"},
    {"name": "Sara Baloch", "phone": "+92 305 4445556"},
    {"name": "Usman Ali", "phone": "+92 306 6667778"},
    {"name": "Zainab Shah", "phone": "+92 307 8889990"},
    {"name": "Bilal Malik", "phone": "+92 308 1239876"},
    {"name": "Hina Sheikh", "phone": "+92 309 3216547"},
    {"name": "Kashif Hussain", "phone": "+92 310 5556667"},
    {"name": "Maria Iqbal", "phone": "+92 311 7778889"},
    {"name": "Omar Farooq", "phone": "+92 312 9990001"},
    {"name": "Nadia Aslam", "phone": "+92 313 4321234"},
    {"name": "Tariq Mehmood", "phone": "+92 314 6547890"},
    {"name": "Sana Javed", "phone": "+92 315 2461357"},
    {"name": "Imran Raza", "phone": "+92 316 1352468"},
    {"name": "Mahnoor Khan", "phone": "+92 317 9873214"},
    {"name": "Danish Ali", "phone": "+92 318 7418529"},
    {"name": "Laiba Noor", "phone": "+92 319 9632587"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Day 8: Contact List"),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
          ),
          title: Text(contacts[index]["name"]!),
          subtitle: Text(contacts[index]["phone"]!),
        ),
      ),
    );
  }
}
