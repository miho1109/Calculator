//
//  Calculator_VIPER_App.swift
//  Calculator(VIPER)
//
//  Created by Admin on 16/08/2564 BE.
//

import SwiftUI

@main
struct Calculator_VIPER_App: App {
  @StateObject var model = DataModel.shared
  
    var body: some Scene {
        WindowGroup {
          ContentView(presenter:
            CalculatorPresenter(interactor:
              CalculatorInteractor(model: model)))
        }
    }
}
