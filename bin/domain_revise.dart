// void main(List<String> args) {
//   List<List<int>> input1 = [
//     [1, 1, 1],
//     [1, 1, 1]
//   ];
//   List<List<int>> input2 = [
//     [0, 0, 0],
//     [0, 0, 0]
//   ];
//   List<List<int>> result = [[], []];

//   for (var i = 0; i < input1.length; i++) {
//     for (var j = 0; j < input2[0].length; j++) {
//       if (i == 0) {
//         result[i].add(input1[i][j]);
//         result[i].add(input2[i][j]);
//       } else if (i == 1) {
//         result[i].add(input2[i][j]);
//         result[i].add(input1[i][j]);
//       }
//     }
//   }
//   print(result);
// }

import 'dart:io';

void main(List<String> args) {
  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= i; j++) {
      print("* ");
    }

    for (var k = 1; k <= i*i; k++) {
        stdout.write("* ");
      
      if(k%i==0){
        print("");
      }
    }
  }
}



















//  https://wellfound.com/l/2yKquF