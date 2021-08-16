//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Admin on 11/08/2564 BE.
//

import Foundation

class CalculatorViewModel: ObservableObject {
  @Published var result: String?
  @Published var calExpression: [String]
  @Published var inputedNumber: String
  
  var isCalculate: Bool = false
  
  init() {
    inputedNumber = ""
    calExpression = [""]
  }
  
  func cleanNil() {
    for (index, value) in calExpression.enumerated() {
      if value == "" {
        calExpression.remove(at: index)
      }
    }
  }
  
  func handleInput(input: String) {
    // remove first blank space
    cleanNil()
 
    if isOperator(input) {
      if calExpression.count > 0 {
        switch input {
        case "=":
          calculate()
        case "C":
          clearAll()
        case "ᐸ":
          deleteLast()
        case "%":
          addPercentage()
        case "+/-":
          makeNegative()
        default:
          if !isOperator(calExpression[calExpression.count-1]) {
            calExpression.append(input)
            inputedNumber = ""
          }
        }
      }
    } else {
      inputedNumber.append(input)
      if calExpression.count == 0 {
        calExpression.append(inputedNumber)
      } else {
        if !isOperator(calExpression[calExpression.count-1]) {
          calExpression.remove(at: calExpression.count-1)
        }
        calExpression.append(inputedNumber)
      }
    }
    
//    print(calExpression.count)
    

//    if calExpression.count >= 3 {
//      print("clear")
//
//      print("new: \(toString(calExpression))")
//    }

  }
  
  func clearAll() {
    calExpression = [""]
    inputedNumber = ""
  }
  
  func deleteLast() {
    let i = calExpression.count-1
    if isOperator(calExpression[i]) {
      calExpression.remove(at: i)
    } else {
      calExpression[i] = calExpression[i].substring(to: calExpression[i].index(before: calExpression[i].endIndex))
      inputedNumber = calExpression[i]
      cleanNil()
    }
  }
  
  func addPercentage() {
    let i = calExpression.count-1
    if !isOperator(calExpression[i]) {
      calExpression[i] = String(Double(calExpression[i])!/100)
      inputedNumber = calExpression[i]
    }
  }
  
  func makeNegative() {
    let i = calExpression.count-1
    if !isOperator(calExpression[i]) {
      calExpression[i] = String(Double(calExpression[i])! * -1)
      inputedNumber = calExpression[i]
    }
  }
  
  func calculate() {
    if calExpression.count < 3 {
      result = inputedNumber
    } else {
    var a = Double(calExpression[0])
    var b = 0.0
    
    for str in calExpression {
      b = Double(calExpression[calExpression.count-1])!
      
      switch str {
        case "÷":
          a! /= b
        case "×":
          a! *= b
        case "+":
          a! += b
        case "-":
          a! -= b
        default:
          print("Skip")
        }
      }
      result = String(a!)
      calExpression = [""]
      inputedNumber = ""
      calExpression.append(result!)
    }
  }
}
