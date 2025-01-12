//
//  CardTwoView.swift
//  Animations
//
//  Created by Sara Lefort on 12/01/2025.
//  Help from Rishabh Sharma on Medium https://medium.com/@rishixcode/card-flip-animation-in-swiftui-5f886a830d45

import SwiftUI

struct CardTwoView: View {
  @Binding var flip: Bool
  @StateObject var card: Card
  
  var body: some View {
      ZStack {
        Rectangle()
          .frame(width: 300, height: 400)
          .foregroundColor(.white)
          .clipShape(RoundedRectangle(cornerRadius: 20))
          .shadow(color: .black.opacity(0.3), radius: 10, x: 0.0, y: 10)
        
        VStack{
          Image(card.image)
          
          Text(card.title)
            .font(.largeTitle)
            .bold()
          
          Text(card.description)
            .font(.subheadline)
        }
      }
      .frame(width: 270, height: 400)
  }
}

#Preview {
  CardTwoView(flip: .constant(false), card: cardWDesc)
}
