//
//  RemovableCell.swift
//  Animations
//
//  Created by Sara Lefort on 29/12/2024.
//

import SwiftUI

struct RemovableCell: View {
  let name: String = "Preview Name"
  let date: String = "02/06/2014"
  @State private var dragOffset = CGFloat.zero
  @State private var isDeleted = false
  
  var body: some View {
    if !isDeleted {
      ZStack {
        //Background Rectnagle
        ZStack(alignment: .trailing){
          Rectangle()
            .frame(maxHeight: 77)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .foregroundStyle(Color.red)
          
          Image(systemName: "trash")
            .foregroundStyle(Color.white)
            .padding()
        }
        
        //Cell
        VStack(alignment: .leading) {
          Text(name)
            .font(.title3)
            .bold()
          Text(date)
            .font(.callout)
            .fontWeight(.light)
            .foregroundStyle(.gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: 3)
        .offset(x: dragOffset)
        .gesture(
          DragGesture()
            .onChanged { value in
              // Balayage à gauche
              if value.translation.width < 0 {
                dragOffset = value.translation.width
              }
            }
            .onEnded { _ in
              withAnimation {
                dragOffset = .zero
                isDeleted = true
              }
            }
        )
        
      }
      .padding()
    }
  }
}

#Preview {
  RemovableCell()
}
