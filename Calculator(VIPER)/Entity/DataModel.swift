//
//  BtnModel.swift
//  Calculator(VIPER)
//
//  Created by Admin on 16/08/2564 BE.
//

import Foundation

class DataModel: ObservableObject, Identifiable{
  @Published var operatorLayout: [Row]

  init() {
    operatorLayout = [
      row1,
      row2,
      row3,
      row4,
      row5
      ]
  }
}

extension DataModel: Equatable {
  static func == (lhs: DataModel, rhs: DataModel) -> Bool {
    lhs == rhs
  }
}

var row1 = Row(
  id: 1,
  content: [
    Operator(name: "C", bgColor: "Gray", textColor: "Orange"),
    Operator(name: "%", bgColor: "Gray", textColor: "Green"),
    Operator(name: "ᐸ", bgColor: "Gray", textColor: "Green"),
    Operator(name: "÷", bgColor: "Gray", textColor: "Green"),
  ]
)

var row2 = Row(
  id: 2,
  content: [
  Operator(name: "7", bgColor: "Gray", textColor: "Black"),
  Operator(name: "8", bgColor: "Gray", textColor: "Black"),
  Operator(name: "9", bgColor: "Gray", textColor: "Black"),
  Operator(name: "×", bgColor: "Gray", textColor: "Green"),
  ]
)

var row3 = Row(
  id: 3,
  content: [
  Operator(name: "4", bgColor: "Gray", textColor: "Black"),
  Operator(name: "5", bgColor: "Gray", textColor: "Black"),
  Operator(name: "6", bgColor: "Gray", textColor: "Black"),
  Operator(name: "-", bgColor: "Gray", textColor: "Green"),
  ]
)

var row4 = Row(
  id: 4,
  content: [
  Operator(name: "1", bgColor: "Gray", textColor: "Black"),
  Operator(name: "2", bgColor: "Gray", textColor: "Black"),
  Operator(name: "3", bgColor: "Gray", textColor: "Black"),
  Operator(name: "+", bgColor: "Gray", textColor: "Green"),
  ]
)

var row5 = Row(
  id: 5,
  content: [
  Operator(name: "+/-", bgColor: "Gray", textColor: "Black"),
  Operator(name: "0", bgColor: "Gray", textColor: "Black"),
  Operator(name: ".", bgColor: "Gray", textColor: "Black"),
  Operator(name: "=", bgColor: "Green", textColor: "White"),
  ]
)


