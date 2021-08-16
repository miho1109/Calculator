	//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Admin on 11/08/2564 BE.
//

import SwiftUI

@main
struct CalculatorApp: App {
  var body: some Scene {
      WindowGroup {
          ContentView(viewModel: CalculatorViewModel())
      }
  }
}
