void main()
{
  List<String> l1=["Meshva","Drashti","Dipali","Meshva","Meshva"];
  List<String> name=uniquename(l1);
  print(name);
}
uniquename(List a)
  {
    Set<String> l2=Set<String>.from(a);
    List<String> l3 =l2.toList();
    return l3;
  }

