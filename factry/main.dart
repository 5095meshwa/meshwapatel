


import 'factry.dart';

void main()
{
  
   List School=[
    {
      "id":1,"Name":"Meshva","Course":"Flutter","City":"Surat",
    },
    { 
      "id":2,"Name":"Mahi","Course":"Bca","City":"valsad",
    },
    {
      "id":3,"Name":"Mansi","Course":"Bcom","City":"navsari",
    },

    {
      "id":4,"Name":"Kinjal","Course":"Mca","City":"puna",
    },
    {  
      "id":5,"Name":"ved","Course":"Mcom","City":"amdavad",
    },
    {
      "id":6,"Name":"garv","Course":"Mca","City":"visngar",
    },
    {
      "id":7,"Name":"smiti","Course":"Bsc","City":"Bardoli",
    },
    {
      "id":8,"Name":"kruti","Course":"msc","City":"surat",
    },
    {
      "id":9,"Name":"urvshi","Course":"It","City":"pune",
    },
    {
      "id":10,"Name":"khushi","Course":"bcom","City":"valsad",
    },
    {
      "id":11,"Name":"dipal","Course":"mca","City":"vapi",
    },
    {
      "id":12,"Name":"maitri","Course":"Ba","City":"baroda",
    },
    {
      "id":13,"Name":"amruta","Course":"Ma","City":"Surat",
    },
    {
      "id":14,"Name":"nirav","Course":"bsc","City":"pune",
    },
    {
      "id":15,"Name":"raj","Course":"msc","City":"baroda",
    },
    {
      "id":16,"Name":"dhruvi","Course":"bca","City":"Saputara",
    },
    {
      "id":17,"Name":"priyal","Course":"Full Stack","City":"Surat",
    },
    {
      "id":18,"Name":"jinal","Course":"Flutter","City":"pune",
    },
    {
      "id":19,"Name":"jeel","Course":"ui","City":"amdavad",
    },
    {
      "id":20,"Name":"vansita","Course":"Flutter","City":"Surat",
    },
    {
      "id":21,"Name":"tejsvi","Course":"mca","City":"baroda",
    },
    {
      "id":22,"Name":"yash","Course":"ui","City":"Surat",
    },
    {

      "id":23,"Name":"anup","Course":"Flutter","City":"Surat",
    },
    {
      "id":24,"Name":"sani","Course":"Full stack","City":"vapi",
    },
    {
      "id":25,"Name":"aaryan","Course":"bca","City":"baroda",
    },
    {
      "id":26,"Name":"ajay","Course":"mca","City":"pune",
    },
    {
      "id":27,"Name":"jay","Course":"Flutter","City":"vapi",
    },
    {
      "id":28,"Name":"yogita","Course":"BA","City":"Surat",
    },
    {
      "id":29,"Name":"diya","Course":"mca","City":"Surat",
    },
    {
      "id":30,"Name":"hardik","Course":"MA","City":"pune",
    },
      
    
   ];
   student s1= student.data(School,1);

  print(s1.id);
  print(s1.Name);
  print(s1.Course);
  print(s1.City);

}
