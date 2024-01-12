void main() {

  List<String> list  = ["Meshva","drashti","dipali","Meshva","anjali"];
  
  Set<String> set = new Set<String>();
  
  for (String num in list) {
    set.add(num);
  }
 
  for (String num in set) {
    print(num);
  }
}