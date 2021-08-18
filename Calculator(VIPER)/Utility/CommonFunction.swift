//
//  CommonFunction.swift
//  Calculator(VIPER)
//
//  Created by Admin on 17/08/2564 BE.
//

import Foundation

func toString(_ array: [String]) -> String {
  var tmp: String = ""
  
  for str in array {
    tmp += str
  }
  
  return tmp
}


func isOperator(_ str: String) -> Bool {
  if str == "÷" || str == "×" || str == "-" || str == "+" || str == "=" || str == "ᐸ" || str == "C" || str == "%" || str == "+/-" {
    return true
  }
  return false
}
