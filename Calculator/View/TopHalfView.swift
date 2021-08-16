//
//  TopHalfView.swift
//  Calculator
//
//  Created by Admin on 11/08/2564 BE.
//

import SwiftUI

struct TopHalfView: View {
  //MARK: - PROPERTIES
  @ObservedObject var viewModel: CalculatorViewModel
  
  //MARK: - BODY
  var body: some View {
    VStack {
      Text(viewModel.result ?? "")
        .padding()
        .font(.title)
      
      Text(toString(viewModel.calExpression))
        .padding(10)
        .font(.title2)
    } //: VSTACK
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomTrailing)
    .background(Color(UIColor.white))
    .foregroundColor(.black)
  }
}

//MARK: - PREVIEW
struct TopHalfView_Previews: PreviewProvider {
  static var previews: some View {
    TopHalfView(viewModel: CalculatorViewModel())
  }
}
