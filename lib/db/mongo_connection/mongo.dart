import 'package:mongo_dart/mongo_dart.dart';

void mongoDBconnection() async {
  print("db connection started!");
  final db = await Db.create(
      'mongodb+srv://VictorKithinji:MarkDB@annekithinjidbdemo.51erqxt.mongodb.net/test');
  await db.open();

  final dbName = 'newTestDB2';
  final collectionName = 'Messages';

  try {
    final collection = db.collection('$dbName.$collectionName');
    print("checkpoint 1");
    await collection.insertOne({'name': "Laptop", 'price': 999.99});
    print("checkpoint 2");
  } catch (e) {
    print("Error occurred accessing the collection : ");
    print("checkpoint 3 - err");
    print(e);
  }
  print("checkpoint final");

  await db.close();
}
