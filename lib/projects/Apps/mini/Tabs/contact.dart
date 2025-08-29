import 'package:flutterlearnplan/const/export.dart';

class ContactTab extends StatelessWidget {
  ContactTab({super.key});
  final List<String> contacts = [
    "Abdul Raouf",
    "Ali",
    "Ahmed",
    "Bilal",
    "Hassan",
    "Usman",
    "Zain",
    "Hamza",
    "Imran",
    "Tariq",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) => ListTile(
        title: contacts[index].text.make(),
        subtitle: "Tab to chat".text.make(),
        trailing: Icon(Icons.call),
      ),
    );
  }
}
