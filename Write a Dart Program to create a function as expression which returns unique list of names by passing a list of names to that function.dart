import 'dart:io';
List<String> getUniqueNames(List<String> names) {
  Set<String> uniqueNames = Set<String>();
  for (String name in names) {
    uniqueNames.add(name);
  }
  return uniqueNames.toList();
}
void main() {
  
  List<String> names = ['meshva','mahi','kinjal','meshva','dipal'];
 
  List<String> uniqueNames = getUniqueNames(names);
  
  print(uniqueNames);
}
