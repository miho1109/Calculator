//
//  BottonHalfView.swift
//  Calculator
//
//  Created by Admin on 11/08/2564 BE.
//

import SwiftUI

struct BottomHalfView: View {
  //MARK: - PROPERTIES
  @ObservedObject var viewModel: CalculatorViewModel
  
  
  //MARK: - BODY	
  var body: some View {
    VStack {
      Spacer()
      GeometryReader(content: { geometry in
        VStack(alignment: .center, spacing: 10, content: {
          Spacer()
          ForEach(btnLayout, id: \.self) { row in
            
            HStack(alignment: .center, spacing: 10, content: {
              Spacer()
              ForEach(row, id: \.self) { item in
                Button(action: {
                  viewModel.handleInput(input: item.name)
                }, label: {
                  Text(item.name)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color(item.textColor))
                })
                .frame(width: 90, height: 90, alignment: .center)//: BUTTON
                .background(
                  Circle()
                    .foregroundColor(Color(item.bgColor))
                )
              } //: LOOP
              Spacer()
            })//: HSTACK
          } //: LOOP
          Spacer()
        }) //: VSTACK     
      }) //: GEOMETRY
    } //:VSTACK
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 414, maxHeight: .infinity, alignment: .topLeading)
    .background(Color(UIColor.white))
  }
}

//MARK: - PREVIEW
struct BottonHalfView_Previews: PreviewProvider {
  static var previews: some View {
    BottomHalfView(viewModel: CalculatorViewModel())
  }
}
