class PeopleInfo {
  String? picture;
  String? name;
  String? gender;
  String? email;
  String? address;
  String? phone;

  PeopleInfo(this.picture, this.name, this.gender, this.email, this.address,
      this.phone);

  PeopleInfo.fromJson(Map<String, dynamic> json) {
    picture = json['picture'];
    name = json['name'];
    gender = json['gender'];
    email = json['email'];
    address = json['address'];
    phone = json['phone'];
  }
}


// Material(
//         child: Column(
//           children: [
//             Card(
//               elevation: 3,
//               child: ExpansionTile(
//                 title: const Text(
//                   'Players',
//                   style:
//                       TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//                 ),
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.person),
//                     title: const Text('Lionel Messi'),
//                     trailing: TextButton(
//                       child: Text('more..'),
//                       onPressed: (() {}),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.person),
//                     title: const Text('Neymar Jr'),
//                     trailing: TextButton(
//                       child: Text('more..'),
//                       onPressed: (() {}),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.person),
//                     title: const Text('Luis Suarez'),
//                     trailing: TextButton(
//                       child: Text('more..'),
//                       onPressed: () {},
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.person),
//                     title: const Text('Ronaldinho'),
//                     trailing: TextButton(
//                       child: Text('more..'),
//                       onPressed: (() {}),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.person),
//                     title: const Text('Maradona'),
//                     trailing: TextButton(
//                       child: Text('more..'),
//                       onPressed: (() {}),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Card(
//               elevation: 3,
//               child: ExpansionTile(
//                 title: const Text(
//                   'Players',
//                   style:
//                       TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//                 ),
//                 children: [
//                   ListTile(
//                     title: const Text('Lionel Messi'),
//                     onTap: () {},
//                   ),
//                   ListTile(
//                     title: const Text('Neymar Jr'),
//                     onTap: () {},
//                   ),
//                   ListTile(
//                     title: const Text('Luis Suarez'),
//                     onTap: () {},
//                   ),
//                   ListTile(
//                     title: const Text('Ronaldinho'),
//                     onTap: () {},
//                   ),
//                   ListTile(
//                     title: const Text('Maradona'),
//                     onTap: () {},
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),