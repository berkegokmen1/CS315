void main() {
  // Declare/create an empty list
  List<String> emptyList = List<String>.empty();
  print("emptyList: $emptyList");

  // Initialize a list with some values
  List<String> list = [
    'Apple', 
    'Avocado', 
    'Cherries', 
    'Dragonfruit', 
    'Grapefruit', 
    'Grapes', 
    'Hazelnut', 
    'Kiwi', 
    'Lime', 
    'Nectarines', 
    'Raspberries'
  ];
  print("list: $list");

  // Check if the list is empty or not
  bool is_empty = list.isEmpty;
  print("is_empty: $is_empty");

  // Add a new element to a list
  list.add("Tangelo");
  list.add("Watermelon");
  print("list after adding items: $list");

  // Check if a particular element exists in the list
  bool doesMelonExist = list.contains("Melon"); // basic way
  bool doesWatermelonExist = !list.where((e) => e == "Watermelon").isEmpty; // complicated way
  print("doesMelonExist: $doesMelonExist doesWatermelonExist: $doesWatermelonExist");

  // Remove a particular element from the list
  list = list
      .where((e) => e != "Tangelo")
      .toList(); // remove Tangelo with filtering
  list.remove("Kiwi"); // remove Kiwi with native api
  list.removeAt(0); // remove item at index 0
  print("list after removing items: $list");

  // Get the head and the tail of a list
  String head = list[0];
  List<String> tail = list.sublist(1);
  print("head: $head, tail: $tail");

  //Print all of the elements in the list
  print("list:");
  list.forEach((e) => print(e));
}
