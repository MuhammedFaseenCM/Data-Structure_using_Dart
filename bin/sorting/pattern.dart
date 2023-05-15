import 'dart:io';

main() {
  int k = 1;

  for (var i = 0; i <= 4; i++) {
    for (var j = 0; j < i; j++) {
      stdout.write("${k++} ");
    }
    print("");
  }
  for (var i = 4; i >= 0; i--) {
    if (i == 4) {
      k = (2 * i) - 1;
      for (var l = 0; l < i; l++) {
        stdout.write("${k++} ");
      }
    }else if(i==3){
      k = 4;
      for (var l = 0; l < i; l++) {
        stdout.write("${k++} ");
      }
    }
    
     else {
      k = (2 * i) - i;
      for (var l = 0; l < i; l++) {
        stdout.write("${k++} ");
      }
    }
    print("");
  }
}
