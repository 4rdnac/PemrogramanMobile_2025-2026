void main() {
  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1,
  // };

  // var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Candra Ahmad Dani';
  gifts['nim'] = '2341720187';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Candra Ahmad Dani';
  nobleGases[21] = '2341720187';

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Candra Ahmad Dani';
  mhs1['nim'] = '2341720187';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Candra Ahmad Dani';
  mhs2[2] = '2341720187';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
