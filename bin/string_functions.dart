import 'dart:convert';

class StringClass {
  

  String encrypt(String str, int code) {
    int strlength = str.length;
    List<int> encryptedStr = [];
    for (var i = 0; i < strlength; i++) {
      int asciiValue = AsciiCodec().encode(str[i]).single;
      if ((asciiValue+code )<= 122) {
        encryptedStr.add(asciiValue + code);
      } else {
        print((asciiValue+code) % 26);
        encryptedStr.add((asciiValue + code)% 26 );
      }
    }
    return AsciiCodec().decode(encryptedStr);
  }
}
