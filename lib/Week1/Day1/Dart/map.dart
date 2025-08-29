void main() {
  // Lte's learn Map in Dart
  Map<String, dynamic> profile = {
    "name": "Abdul Raouf",
    "age": "21",
    "Skill": ["Dart", "Flutter", "Firebse"],
  };

  // Display the output of Map
  print("Name: ${profile['name']}");
  print("Skills ${profile['Skill']}");
  print("Skill ${profile['Skill'][2]}");
}

/*
    OUTPUT
PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day1> dart run map.dart
Name: Abdul Raouf
Skills [Dart, Flutter, Firebse]
Skill Firebse
PS D:\flutter 2025\flutterlearnplan\lib\Week1\Day1> 
*/
