/*import 'package:firebase_database/firebase_database.dart';
import 'package:vampir_game/models/database_config.dart';
import 'package:vampir_game/models/user.dart';
import 'package:vampir_game/models/lobby.dart';
import 'package:vampir_game/models/lobby_credentials.dart';

class DatabaseManager {
  static DatabaseManager instance;
  DatabaseReference databaseReference;

  DatabaseReference usersTable,
      lobbiesTable,
      lobbyCredentialsTable,
      activeLobbyTable,
      voteTable,

  DatabaseReference endDayRequestTable,
      infoMessagesTable;

  DatabaseReference testTable;

  DatabaseManager() {
    instance = this;
  }

  void initialize(DatabaseReference databaseReference) {
    this.databaseReference = databaseReference;
    usersTable = databaseReference.child(DatabaseConfig.usersTableName);
    lobbiesTable = databaseReference.child(DatabaseConfig.lobbiesTableName);
    lobbyCredentialsTable =
        databaseReference.child(DatabaseConfig.lobbyCredentialsTableName);
    testTable = databaseReference.child(DatabaseConfig.testTableName);
    winnersTable = databaseReference.child(DatabaseConfig.winnersTableName);

    infoMessagesTable =
        databaseReference.child(DatabaseConfig.infoMessagesTableName);
  }

  Future<bool> registerUser(User u) async {
    try {
      String json = u.toJson();
      await usersTable.child(u.username).set(json);
    } catch (e) {
      print(e);
      return false;
    }

    return true;
  }

  Future<User> getUser(String username) async {
    DataSnapshot snapshot = await usersTable.child(username).once();
    Map<dynamic, dynamic> value = snapshot.value;
    return User.fromJson(value);
  }

  Future<LobbyCredentials> getLobbyCredentials(String id) async {
    DataSnapshot snapshot = await lobbyCredentialsTable.child(id).once();
    Map<dynamic, dynamic> value = snapshot.value;
    return LobbyCredentials.fromJson(value);
  }

  Future<Lobby> getLobby(String id) async {
    Query query = lobbiesTable.orderByKey().equalTo(id).limitToFirst(1);
    DataSnapshot snapshot = await query.once();
    Map<dynamic, dynamic> value = snapshot.value.values.first;
    return Lobby.fromJson(value);
  }

  Future<bool> createLobby(Lobby lobby) async {
    try {
      String lobbyJson = lobby.toJson();
      await lobbiesTable.child(lobby.credentials.id).set(lobbyJson);
      String credsJson = lobby.credentials
    }
  }
}*/