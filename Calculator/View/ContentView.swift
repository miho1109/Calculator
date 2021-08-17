//
//  ContentView.swift
//  Calculator
//
//  Created by Admin on 11/08/2564 BE.
//

import SwiftUI

struct ContentView: View {
  //MARK: - PROPERTIES
  @ObservedObject var viewModel: CalculatorViewModel
  
  //MARK: - BODY
  var body: some View {
    GeometryReader { geometry in
      VStack {
        TopHalfView(viewModel: viewModel)
        
        BottomHalfView(viewModel: viewModel)
          .frame(width: geometry.size.width, height: geometry.size.height*0.75, alignment: .center)
      } //: VSTACK
      .edgesIgnoringSafeArea(.all)
    }
  }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {  
    static var previews: some View {
        ContentView(viewModel: CalculatorViewModel())
    }
}
