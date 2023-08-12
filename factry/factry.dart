





class student
{
  String? Name,Course,City;
   int?id;

  student({this.id,this.Name,this.Course,this.City});
  factory student.data(List School,int index)
  {
    return student(
      id: School[index]["id"],
      Name: School[index]["Name"],
      Course: School[index]["Course"],
      City: School[index]["City"]
    );
  }
}
