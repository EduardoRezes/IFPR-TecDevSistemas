import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import './contato.dart';

class DatabaseHelper {
  static const _dbName = 'contatos.db';
  static const _dbVersion = 1;

  //singleton
  DatabaseHelper._privateConstructor();

  //Abre a instancia do banco de dados
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    // if (_database != null) return _database!;

    // if (_database == null) {
    //  _database = await _initDatabase();
    // }
    _database ??= await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    String dbPath = join(await getDatabasesPath(), _dbName);

    return await openDatabase(dbPath,
        version: _dbVersion, onCreate: _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ${Contato.tableContato} (
        ${Contato.colID} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${Contato.colNome} TEXT NOT NULL,
        ${Contato.colEmail} TEXT NOT NULL
      )
    ''');
  }

  Future<int> inserirContato(Contato contato) async {
    Database db = await instance.database;
    return await db.insert(Contato.tableContato, contato.toMap(),
        where: '${Contato.colID} = ?', whereArgs: [contato.id]);
  }

  Future<int> excluirContato(Contato contato) async {
    Database db = await instance.database;
    return await db.delete(Contato.tableContato,
        where: '${Contato.colID} = ?', whereArgs: [id]);
  }

  Future<int> listarContato(Contato contato) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> contatos = await db.query(Contato.tableContato);
    return contatos.isEmpty ? [] : contatos.map((e) => Contato.fromMap(e)).toList();
  }
}
