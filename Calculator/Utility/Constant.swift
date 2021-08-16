//
//  Constant.swift
//  Calculator
//
//  Created by Admin on 11/08/2564 BE.
//

import Foundation

var row1: [Operator] = [
  Operator(name: "C", bgColor: "Gray", textColor: "Orange"),
  Operator(name: "%", bgColor: "Gray", textColor: "Green"),
  Operator(name: "ᐸ", bgColor: "Gray", textColor: "Green"),
  Operator(name: "÷", bgColor: "Gray", textColor: "Green"),
]

var row2: [Operator] = [
  Operator(name: "7", bgColor: "Gray", textColor: "Black"),
  Operator(name: "8", bgColor: "Gray", textColor: "Black"),
  Operator(name: "9", bgColor: "Gray", textColor: "Black"),
  Operator(name: "×", bgColor: "Gray", textColor: "Green"),
]

var row3: [Operator] = [
  Operator(name: "4", bgColor: "Gray", textColor: "Black"),
  Operator(name: "5", bgColor: "Gray", textColor: "Black"),
  Operator(name: "6", bgColor: "Gray", textColor: "Black"),
  Operator(name: "-", bgColor: "Gray", textColor: "Green"),
]

var row4: [Operator] = [
  Operator(name: "1", bgColor: "Gray", textColor: "Black"),
  Operator(name: "2", bgColor: "Gray", textColor: "Black"),
  Operator(name: "3", bgColor: "Gray", textColor: "Black"),
  Operator(name: "+", bgColor: "Gray", textColor: "Green"),
]

var row5: [Operator] = [
  Operator(name: "+/-", bgColor: "Gray", textColor: "Black"),
  Operator(name: "0", bgColor: "Gray", textColor: "Black"),
  Operator(name: ".", bgColor: "Gray", textColor: "Black"),
  Operator(name: "=", bgColor: "Green", textColor: "White"),
]

let btnLayout = [
  //  ["C", "%", "ᐸ", "÷"],
  //  ["7", "8", "9", "×"],
  //  ["4", "5", "6", "-"],
  //  ["1", "2", "3", "+"],
  //  ["+/-", "0", ".", "="]
  row1,
  row2,
  row3,
  row4,
  row5
]
