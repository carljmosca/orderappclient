library orderapp.lib.order_item;

class OrderItem {

  String description;
  String option1Label;
  String option2Label;
  List<String> option1;
  List<String> option2;

  OrderItem() {

    option1 = new List();
    option2 = new List();

    option1.add("Test");
    option1.add("Test 2");
    option1Label = "Toppings";

  }

}