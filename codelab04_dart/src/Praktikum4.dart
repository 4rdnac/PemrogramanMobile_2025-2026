void main() {
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];

  // print(list);
  // print(list2);
  // print(list2.length);

  // var list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...list1];
  // print(list3.length);

  // var nim1 = [2, 3, 4, 1, 7];
  // var nim2 = [...nim1, 2, 0, 1, 8, 7];
  // print(nim2);

  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // var promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // var promoActive = false;
  // var nav1 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav1);

  // var login = 'Manager';
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  // print(nav2);

  // login = 'Guest';
  // var nav3 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  // print(nav3);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
