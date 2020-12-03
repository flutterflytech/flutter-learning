import 'dart:collection';

main() {
  MyCollectionDemo.add(
      MyCollectionDemo.growableList, 5); // will add elements to the list
  MyCollectionDemo.displayList(
      "",
      MyCollectionDemo
          .growableList); // will print the elements of the list using for Loop
  MyCollectionDemo.growableList.clear(); // will clear the elements of the list
  MyCollectionDemo.fixSizedList[0] =
      "Alok"; // will replace the element at index 0 in the list
  MyCollectionDemo.fixSizedList[1] =
      "Alok Kumar"; // will replace the element at index 1 in the list
  MyCollectionDemo.fixSizedList[2] =
      "DR"; // will replace the element at index 2 in the list
  MyCollectionDemo.growableList = List.from(MyCollectionDemo.fixSizedList,
      growable:
          true); // will create a dynamic list with elements already present in the given iterable object
  MyCollectionDemo.displayList(
      "", MyCollectionDemo.fixSizedList); // will print the elements of the list

  MyCollectionDemo.growableList
      .clear(); // will clear the elements present in the list
// MyCollectionDemo.growableList = List.generate(4,(index) => index,growable: true);
  MyCollectionDemo.growableList =
      List.of(MyCollectionDemo.fixSizedList, growable: true);

  MyCollectionDemo.displayList("Using of ", MyCollectionDemo.growableList);
// MyCollectionDemo.growableList.clear(); // will clear the elements present in the list
// MyCollectionDemo.growableList = List.unmodifiable(MyCollectionDemo.fixSizedList);  // will create a list with elements already present in the given iterable object and it is unmodifiable
// MyCollectionDemo.growableList.add("dafdsf"); // will cause error because list is unmodifiable and created with elements in fixedSizedList
// MyCollectionDemo.displayList("Using unmodifiable ", MyCollectionDemo.growableList);

//List Properties
  print(
      "First : ${MyCollectionDemo.growableList.first}"); // will return the first element of the list
  print(
      "Last : ${MyCollectionDemo.growableList.last}"); // will return the last element of the list
  print(
      "HashCode : ${MyCollectionDemo.growableList.hashCode}"); // will return the hashCode of the list
  print(
      "IsEmpty : ${MyCollectionDemo.growableList.isEmpty}"); // will check if the list is Empty
  print(
      "IsNotEmpty : ${MyCollectionDemo.growableList.isNotEmpty}"); // will check if the list is not Empty
  /*** ITERABLE **/
  print(
      "Length : ${MyCollectionDemo.growableList.length}"); // will return the length of the list
  print(
      "Reversed : ${MyCollectionDemo.growableList.reversed}"); // will return the list in reversed order
  print(
      "Iterator : ${MyCollectionDemo.growableList.iterator}"); // will return the Iterator for traversing the list
  print("RunTimeType : ${MyCollectionDemo.growableList.runtimeType}");
  MyCollectionDemo.growableList.clear();

  MyCollectionDemo.add(MyCollectionDemo.growableList, 1);
  print("Single : ${MyCollectionDemo.growableList.single}");

  MyCollectionDemo.growableList.addAll(["ABC","DEF","GHI","JKL","MNO","PQR"]);
  print("List : ${MyCollectionDemo.growableList}");
  
  //print(MyCollectionDemo.growableList.any((element) => if))

  print("asMap() : ${MyCollectionDemo.growableList.asMap()}");
  var list =  [2.0,3.0,4.56] ;
  print("cast() : ${list.cast()}");

  print("contains() : ${MyCollectionDemo.growableList.contains("DEF")}");
  print("ElementAt() 2 : ${MyCollectionDemo.growableList.elementAt(2)}");

  print("every() : ${list.every((element) => element>1)}"); // will Check whether every element of this iterable satisfies
  // print("expand() : ${list.expand((element) => )}"); // will Check whether every element of this iterable satisfies

  print("expand() : ${MyCollectionDemo.growableList.expand((element) => [1,8]).toList()}"); /**Doubt where to use**/

  MyCollectionDemo.growableList.fillRange(0,3,"Traffic");

}

class MyCollectionDemo {
  static List<String> growableList = [];
  static List<String> fixSizedList = List(3);

  // static List<String> filledList = List.filled(2,"Alok",growable:false);

  static List<String> add(List mList, int nOE) {
    for (var count = 0; count < nOE; count++) {
      mList.add(count.toString());
    }
  }

  static void displayList(String message, List mList) {
    if (message != null && message != "") {
      print(message);
    }
    for (var count = 0; count <= mList.length - 1; count++) {
      print("Element at Index  $count : ${mList[count]}");
    }
    print("\n");
  }
}
