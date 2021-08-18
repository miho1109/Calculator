//
//  ContentView.swift
//  Calculator(VIPER)
//
//  Created by Admin on 16/08/2564 BE.
//

import SwiftUI

struct ContentView: View {
  //MARK: - PROPERTIES
  @ObservedObject var presenter: CalculatorPresenter
  
  //MARK: - BODY
  var body: some View {
    GeometryReader { geometry in
      VStack {
        TopHalfView(presenter: presenter)
        
        BottomHalfView(presenter: presenter)
          .frame(width: geometry.size.width, height: geometry.size.height*0.75, alignment: .center)
      } //: VSTACK
      .edgesIgnoringSafeArea(.all)
    }
  }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(presenter:
      CalculatorPresenter(interactor:
        CalculatorInteractor(model: DataModel())))
  }
}
