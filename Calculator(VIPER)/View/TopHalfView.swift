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
      HStack(alignment: .lastTextBaseline, spacing: 5, content: {
        Text(presenter.result ?? "")
          .padding()
          .font(.largeTitle)
      }) //: HSTACK
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
      
      HStack(alignment: .lastTextBaseline, spacing: 5, content: {
        Text(toString(presenter.calExpression))
          .padding(10)
          .font(.title)
      }) //: HSTACK
      .frame(maxWidth: .infinity, maxHeight: 50, alignment: .bottomTrailing)
      
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
