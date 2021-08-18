//
//  Operator.swift
//  Calculator(VIPER)
//
//  Created by Admin on 16/08/2564 BE.
//

import Foundation
import Combine

class Operator: Identifiable, Codable {
  let id: UUID
  let name: String
  let bgColor: String
  let textColor: String
  
  init(id: UUID = UUID(), name: String, bgColor: String, textColor: String) {
    self.id = id
    self.name = name
    self.bgColor = bgColor
    self.textColor = textColor
  }
}

//extension Operator: Equatable {
//  static func == (lhs: Operator, rhs: Operator) -> Bool {
//    lhs.name == rhs.name
//  }
//}
