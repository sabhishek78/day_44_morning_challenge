import 'dart:math';
import 'dart:io';

// Trapping Rain Water
// Given n non-negative integers representing an elevation map where the width
// of each bar is 1, compute how much water it is able to trap after raining.
/// https://assets.leetcode.com/uploads/2018/10/22/rainwatertrap.png
// The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1].
// In this case, 6 units of rain water (blue section) are being trapped.

// Example:
// Input: [0,1,0,2,1,0,1,3,2,1,2,1]
// Output: 6
main() {
  print(checkRainWater([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]));
}
/*
int checkRainWater(List<int> inputList) {
  if (checkListValidity(inputList)) {
    return calculateArea(inputList);
  } else {
    return 0;
  }
}
*/
int checkRainWater(List<int> inputList) {
 return (checkListValidity(inputList))?  calculateArea(inputList):  0;
}


int calculateArea(List<int> inputList) {
  int waterAmount = 0;
  while (!everyElementZero(inputList)) {
    List<int> water = [];

    int max = inputList.reduce((curr, next) => curr > next ? curr : next);
    print("max=$max");
    for (int i = 0; i < inputList.length; i++) {
      // traverse through the list and find out the topmost tower
      if (inputList[i] == max) {
        water.add(i);
      }
    }
    print("Water List=$water");
    // calculate water amount
    for (int i = 0; i < water.length - 1; i++) {
      waterAmount = waterAmount + water[i + 1] - water[i] - 1;
    }
    print("water amount=$waterAmount");
    for (int i = 0; i < inputList.length; i++) {
      if (inputList[i] == max) {
        inputList[i] = inputList[i] - 1;
      }
    }
  }
  ;
  return waterAmount;
}

bool everyElementZero(List<int> inputList) {
  for (int i = 0; i < inputList.length; i++) {
    if (inputList[i] != 0) {
      return false;
    }
  }
  return true;
}

bool checkListValidity(List<int> inputList) {
  return !(inputList.length < 2);
}
