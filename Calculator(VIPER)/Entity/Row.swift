//
//  Row.swift
//  Calculator(VIPER)
//
//  Created by Admin on 18/08/2564 BE.
//
class Row: Identifiable, Codable {
  let id: Int
  let content: [Operator]
  
  init(id: Int, content: [Operator]) {
    self.id = id
    self.content = content
  }
}


