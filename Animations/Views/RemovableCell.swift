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
      
      var body: some View {
          HStack {
              VStack(alignment: .leading) {
                  Text(name)
                      .font(.title3)
                      .bold()
                  Text(date)
                      .font(.callout)
                      .fontWeight(.light)
                      .foregroundStyle(.gray)
              }
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding()
          .background(Color.white)
          .clipShape(RoundedRectangle(cornerRadius: 16))
          .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: 3)
      }
  
  /// Help from Paul Hudscon : https://www.hackingwithswift.com/books/ios-swiftui/deleting-items-using-ondelete
//  func removeRows(at offsets: IndexSet) {
//    myTasks.remove(atOffsets: offsets)
//  }
}

#Preview {
  RemovableCell()
}
