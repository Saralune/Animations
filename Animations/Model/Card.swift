//
//  Card.swift
//  Animations
//
//  Created by Sara Lefort on 12/01/2025.
//

import Foundation

class Card: ObservableObject {
  var image: String
  var title: String
  var description: String
  
  init(image: String, title: String, description: String){
    self.image = image
    self.title = title
    self.description = description
  }
}

let cardPreview = Card(image: "sara", title: "Ceci est un titre", description: "Ceci est une description")
let cardWImage = Card(image: "", title: "Card sans Image", description: "ceci est une card sans image")
let cardWDesc = Card(image: "sara", title: "Card sans Image", description: "")
