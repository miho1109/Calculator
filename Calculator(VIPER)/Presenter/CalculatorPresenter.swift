//
//  CalculatorPresenter.swift
//  Calculator(VIPER)
//
//  Created by Admin on 16/08/2564 BE.
//

import SwiftUI
import Combine

class CalculatorPresenter: ObservableObject {
  let interactor: CalculatorInteractor
  
  @Published var operatorLayout: [Row] = []
  	
  init(interactor: CalculatorInteractor) {
    self.interactor = interactor
    
    inputedNumber = ""
    calExpression = [""]
    
//    operatorLayout = interactor.model.operatorLayout
    
//    interactor.model.$operatorLayout
//      .assign(to: self.operatorLayout)
    
    interactor.model.$operatorLayout
      .assign(to: \.operatorLayout, on: self)
    
  }
  
  @Published var result: String?
  @Published var calExpression: [String]
  @Published var inputedNumber: String
  
  var isCalculate: Bool = false
//
//  init() {
//    inputedNumber = ""
//    calExpression = [""]
//  }
//
  // Clean empty element in calExpression
  func cleanNil() {
    for (index, value) in calExpression.enumerated() {
      if value == "" {
        calExpression.remove(at: index)
      }
    }
  }
  
  // Handle the input
  func handleInput(input: String) {
    // remove first blank space
    cleanNil()
    
    if isOperator(input) {
      // Append operators into calExpression
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
      // Append numbers into calExpression
      inputedNumber.append(input)
      if calExpression.count == 0 {
        calExpression.append(inputedNumber)
      } else {
        // Append number not at index = 0
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
  
  // Clear all "C"
  func clearAll() {
    calExpression = [""]
    inputedNumber = ""
    cleanNil()
  }
  
  // Remove last "ᐸ"
  func deleteLast() {
    let i = calExpression.count-1
    if isOperator(calExpression[i]) {
      // Remove element i if is operator
      calExpression.remove(at: i)
    } else {
      // Remove last char of element i if is number
      calExpression[i] = calExpression[i].substring(to: calExpression[i].index(before: calExpression[i].endIndex))
      inputedNumber = calExpression[i]
    }
    cleanNil()
  }
  
  // Make percentage "%"
  func addPercentage() {
    let i = calExpression.count-1
    if !isOperator(calExpression[i]) {
      calExpression[i] = String(Double(calExpression[i])!/100)
      inputedNumber = calExpression[i]
    }
  }
  
  // Switch between + & - "+/-"
  func makeNegative() {
    let i = calExpression.count-1
    if !isOperator(calExpression[i]) {
      calExpression[i] = String(Double(calExpression[i])! * -1)
      inputedNumber = calExpression[i]
    }
  }
  
  // Calculate result
  func calculate() {
    if calExpression.count < 3 {
      // Dont calculate if calExpression has < 3 element. Eg: [99][x]
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
      // Set the result
      result = String(a!)
      // Clear the calExpression & inputedNumber
      calExpression = [""]
      inputedNumber = ""
//      calExpression.append(result!)
      cleanNil()
    }
  }
}
