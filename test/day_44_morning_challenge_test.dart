import 'package:test/test.dart';
import '../bin/main.dart';

void main() {

  test("amout of Rain Water", () {
    expect(checkRainWater([0,1,0,2,1,0,1,3,2,1,2,1]),
        6);
  });
  test("amout of Rain Water", () {
    expect(checkRainWater([3,1,3]),
        2);
  });
  test("amout of Rain Water", () {
    expect(checkRainWater([3,2,3]),
        1);
  });
  test("amout of Rain Water", () {
    expect(checkRainWater([3,3,3]),
        0);
  });
  test("amout of Rain Water", () {
    expect(checkRainWater([3,3]),
        0);
  });
  test("amout of Rain Water", () {
    expect(checkRainWater([3]),
        0);
  });
  test("amout of Rain Water", () {
    expect(checkRainWater([]),
        0);
  });
  test("amout of Rain Water", () {
    expect(checkRainWater([2,1,0,3]),
        3);
  });
}