
import 'dart:io';

void main() {
  int choice;

  choice = Market.Dashboard();

  All_Product p1 = All_Product();

  List customerList = [];

  while (true) {
    switch (choice) {
      case 1:
        Customer c1 = new Customer();
        c1.Input();
        p1 = new All_Product();

        Map map = {};
        map['customerInfo'] = c1;
        List list = p1.Materials();
        map['cartData'] = list;

        customerList.add(map);

        break;

      case 2:
        print("\n! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ");

        for (int i = 0; i < customerList.length; i++) {
          customerList[i]['customerInfo'].Output();
          All_Product.Cart_Data(customerList[i]['cartData']);
        }
        break;

      case 3:
        int searchId;
        bool found = false;

        print("\n —⋅⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯— ");
        stdout.write("👉 Enter cutomer id  : ");
        searchId = int.parse(stdin.readLineSync()!);
        print(" —⋅⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯— ");

        for (int i = 0; i < customerList.length; i++) {
          if (searchId == customerList[i]['customerInfo'].TakeId()) {
            found = true;
            customerList[i]['customerInfo'].Output();
            All_Product.Cart_Data(customerList[i]['cartData']);
          }
        }

        if (!found) {
          print("\n —⋅⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯— ");
          print("      👎 No records found! 👎      ");
          print(" —⋅⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯— ");
        }
        break;

      case 4:
        exit(0);

      default:
        print(" Enter valid choice! ");
        Market.Dashboard();
    }
    choice = Market.Dashboard();
  }
}

class All_Product {
  List ProductList = [
    {"Pr.id": 1, "Pr.name": "Sugar", "Price": 50, "Quantity": 1},
    {"Pr.id": 2, "Pr.name": "Pulses", "Price": 120, "Quantity": 1},
    {"Pr.id": 3, "Pr.name": "Rice", "Price": 1200, "Quantity": 1},
    {"Pr.id": 4, "Pr.name": "Kaju", "Price": 600, "Quantity": 1},
    {"Pr.id": 5, "Pr.name": "Almond", "Price": 700, "Quantity": 1},
    {"Pr.id": 6, "Pr.name": "Kismis", "Price": 150, "Quantity": 1},
    {"Pr.id": 7, "Pr.name": "Tea", "Price": 50, "Quantity": 1},
    {"Pr.id": 8, "Pr.name": "coffee", "Price": 70, "Quantity": 1},
    {"Pr.id": 9, "Pr.name": "Bread", "Price": 50, "Quantity": 1},
    {"Pr.id": 10, "Pr.name": "Jam", "Price": 185, "Quantity": 1},
  ];

  List cartList = [];

  List Materials() {
    int Choose_Product = 0;
    int Choose_Product_Quantity = 0;
    Map map = {};

    print("\n* * * * * * * * * * * * * * * * * * * * * *");
    print("*            --------------------         *");
    print("*           ||   All Products  ||         *");
    print("*            --------------------         *");
    print("*                                         *");

    for (int i = 0; i < ProductList.length; i++) {
      print(
          "*            ${ProductList[i]['Pr.id']}.${ProductList[i]['Pr.name']} (${ProductList[i]['Price']}Rs)\t\t  *");
    }
    print("*                                         *");
    print("*                                         *");
    print("* * * * * * * * * * * * * * * * * * * * * *\n");

    print("\n- - - - - - - - - - - - - - - - - -");
    stdout.write("👉 Enter your product : ");
    Choose_Product = int.parse(stdin.readLineSync()!);

    if (Choose_Product <= 10 && Choose_Product > 0  ) {
      map['Pr.id'] = ProductList[Choose_Product - 1]['Pr.id'];
      map['Pr.name'] = ProductList[Choose_Product - 1]['Pr.name'];
      map['Price'] = ProductList[Choose_Product - 1]['Price'];

      stdout.write("👉 Enter the number of Quantity : ");
      Choose_Product_Quantity = int.parse(stdin.readLineSync()!);
      print("- - - - - - - - - - - - - - - - - -\n");

      map['Quantity'] = Choose_Product_Quantity;

      cartList.add(map);

      stdout.write("You want to add moreee ? [y/n] : ");
      String Repeat = stdin.readLineSync()!;

      if (Repeat == 'y') {
        Materials();
      }
    } else {
      print("Plz enter the valid option!");
      Materials();
    }

    return cartList;
  }

  static Cart_Data(List list) {
    double Discount = 0;
    double Total_Amount = 0;
    double Discount_Amount = 0;
    double Payable_Amount = 0;

    print('\n-------- Customer cart Details  --------\n');

    for (int i = 0; i < list.length; i++) {
      Total_Amount +=
          ((list[i]['Price'] as int) * (list[i]['Quantity'] as int));
      print(
          "Name : ${list[i]['Pr.name']}, Price : ${list[i]['Price']}Rs , Quantity : ${list[i]['Quantity']}");
    }

    if (Total_Amount >= 500 && Total_Amount <= 1510) {
      Discount = 10;
    } else if (Total_Amount > 1510 && Total_Amount <= 3510) {
      Discount = 20;
    } else if (Total_Amount > 3510 && Total_Amount <= 6510) {
      Discount = 25;
    } else if (Total_Amount > 6510) {
      Discount = 30;
    }


    Discount_Amount = Total_Amount * (Discount / 100);
    Payable_Amount = Total_Amount - Discount_Amount;

    print("\n Total Amount ->  $Total_Amount");
    print("\n Discount Amount ->  $Discount_Amount  ($Discount%)");
    print("\n Payable Amount ->  $Payable_Amount");

    print("\n - * - * - * - * - * - * - * - * - * - * - * - *\n");
  }
}

class Customer extends All_Product {
  late int _Id;
  late String _Name;
  late String _Contact_no;

  Input() {
    print(" —⋅⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯— ");

    stdout.write("👉 Enter The Customer Id : ");
    _Id = int.parse(stdin.readLineSync()!);

    stdout.write("👉 Enter customer name : ");
    _Name = stdin.readLineSync()!;

    stdout.write("👉 Enter customer contact number : ");
    _Contact_no = stdin.readLineSync()!;

    print("\n —⋅⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯— ");
  }

  Output() {
    print("\n👉 Customer id : $_Id");
    print("👉 Customer name : $_Name");
    print("👉 Customer contact number : $_Contact_no");
  }

  TakeId() => _Id;
}

class Market {
  List customer_data = [];

  static int Dashboard() {
    int choice;

    print("\n------------------------------------------");
    print("-                                        -");
    print("-                Welcome               -");
    print("-               ------------             -");
    print("-                                        -");
    print("-   Press 1 for Add new customer         -");
    print("-   Press 2 for All customer data        -");
    print("-   Press 3 for Search existed customer  -");
    print("-   Press 4 for Exit                     -");
    print("                                        -");
    print("---------------------------------------------\n");

    stdout.write(" Enter your choice : ");
    choice = int.parse(stdin.readLineSync()!);

    return choice;
  }
}
