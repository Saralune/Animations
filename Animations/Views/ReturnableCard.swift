//
//  ReturnableCard.swift
//  Animations
//
//  Created by Sara Lefort on 29/12/2024.
//

import SwiftUI

struct ReturnableCard: View {
  //  let card: Card
  @State var isFlipped: Bool
  @State var flip = false
  
  @ObservedObject var card: Card
  
  var body: some View {
    VStack {
      ZStack{
        CardOneView(flip: $flip, card: cardPreview)
          .rotation3DEffect(.degrees(flip ? 0 : -90), axis: (x: 0, y: 1, z: 0))
          .animation(flip ? .linear.delay(0.35) : .linear, value: flip)
        CardTwoView(flip: $flip, card: cardWImage)
          .rotation3DEffect(.degrees(flip ? 90 : 0), axis: (x: 0, y: 1, z: 0))
          .animation(flip ? .linear : .linear.delay(0.35), value: flip)
        
      } // ZStack
      .padding()
      
      Button{
        withAnimation(.easeInOut(duration: 1)) {
          flip  .toggle()
        }
      } label: {
        Text("Retourner")
          .font(.system(size: 20))
          .foregroundStyle(.white)
          .padding()
          .background(.blue)
          .clipShape(RoundedRectangle(cornerRadius: 20))
          .shadow(color: .black.opacity(0.3), radius: 10, x: 0.0, y: 10)
          .padding(.top, 100)
      }
    } //VStack
  }
}

#Preview {
  ReturnableCard(isFlipped: false, card: cardPreview)
}
