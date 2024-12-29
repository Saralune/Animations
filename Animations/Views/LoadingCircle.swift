//
//  LoadingCircle.swift
//  Animations
//
//  Created by Sara Lefort on 29/12/2024.
//

import SwiftUI

struct LoadingCircle: View {
  @State private var rotationAngle: Double = 0
  
  var body: some View {
    Circle()
      .trim(from: 0, to: 0.3)
      .stroke(lineWidth: 6)
      .frame(width: 50, height: 50)
      .rotationEffect(Angle.degrees(rotationAngle))
      .onAppear {
        withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
          rotationAngle = 360
        }
      }
  }
}

#Preview {
  LoadingCircle()
}
