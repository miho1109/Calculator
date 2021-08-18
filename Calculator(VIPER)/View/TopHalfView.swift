//
//  TopHalfView.swift
//  Calculator(VIPER)
//
//  Created by Admin on 16/08/2564 BE.
//

import SwiftUI

struct TopHalfView: View {
  //MARK: - PROPERTIES
  @ObservedObject var presenter: CalculatorPresenter
  
  //MARK: - BODY
  var body: some View {
    VStack {
      Text(presenter.result ?? "")
        .padding()
        .font(.title)
      
      Text(toString(presenter.calExpression))
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
    TopHalfView(presenter:
      CalculatorPresenter(interactor:
        CalculatorInteractor(model: DataModel())))
  }
}
