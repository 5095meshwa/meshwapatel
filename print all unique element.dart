void main() {
  // Create a list .
  List<int> list  = [1,2,3,4,3,5,6,4,7,8,3,6];
  // Create a set to store the unique elements.
  Set<int> set = new Set<int>();
  // Add all the elements from the list to the set.
  for (int num in list) {
    set.add(num);
  }
  // Print all the unique elements from the set.
  for (int num in set) {
    print(num);
  }
}
