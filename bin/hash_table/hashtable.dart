class HashTable {
  int size;
  List table = [];
  HashTable(this.size) {
    table = List.filled(size, null);
  }

  int hash(String key) {
    int total = 0;
    String trimKey = key.trim();
    for (var i = 0; i < trimKey.length; i++) {
      total += trimKey.codeUnitAt(i);
    }
    return total % size;
  }

  set(String key, value) {
    int index = hash(key);

    List? bucket = table[index];
    if (bucket == null) {
      table[index] = [
        [key, value]
      ];
    } else {
      dynamic sameKeyItem = bucket.where((element) => element[0] == key);
      if (sameKeyItem.isNotEmpty) {
        sameKeyItem[1] = value;
      } else {
        bucket.add([key, value]);
      }
    }
  }

  get(key) {
    int index = hash(key);
    List? bucket = table[index];
    if (bucket != null) {
      // var sameKeyItem = bucket.indexWhere((item) => item[0] == key);
      // if (sameKeyItem != -1) {
      //   return bucket[sameKeyItem][1];
      // }
      var sameKeyItem = bucket.where((element) => element[0] == key).toList();
      if (sameKeyItem.isNotEmpty) {
        return sameKeyItem[0][1];
      }
    }
    return null;
  }

  remove(key) {
    int index = hash(key);
    if (table[index] == null) {
      print("Value is not available");
      return;
    }
    List bucket = table[index];
    int sameKeyItem = bucket.indexWhere((item) => item[0] == key);
   
    if (sameKeyItem >=0) {
      bucket.removeAt(sameKeyItem);
    } else {
      print("Value not available");
    }
  }

  display() {
    for (var i = 0; i < table.length; i++) {
      // print(table[i].length.toString());

      if (table[i] != null) {
        print("index: $i , ${table[i]} ");
      }
    }
  }
}

void main() {
  HashTable hashTable = HashTable(50);

  hashTable.set("name", "Faseen");
  hashTable.set("age", 22);
  hashTable.set("domain", "Flutter");
  hashTable.set("apple", 1);
  hashTable.set("banana", 2);
  hashTable.set("orange", 3);
  hashTable.set("lemon", 4);
  hashTable.set("place", "brototype ");
  hashTable.remove("name");
  hashTable.remove("name");
  hashTable.display();
  print(hashTable.get("place"));
}
