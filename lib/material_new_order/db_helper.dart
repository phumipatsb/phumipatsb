import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;
import 'package:test1/pull_from_api/orderlist.dart';
class DBHelper{

static Database? _db;

Future<Database?> get db async{
  if(_db != null){
    return _db!;

  }
  _db= await initDatabase();

}
initDatabase()async{

  io.Directory documentDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentDirectory.path,'Mapmanu.db');
  var db = await openDatabase(path, version: 1,onCreate:_onCreate, );
  return db;
}
_onCreate(Database db,int Verion,)async{
  await db.execute(
    'CREATE TABLE cart (id INTEGER PRIMARY KEY,)'
  );

}

}