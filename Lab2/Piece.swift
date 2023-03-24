//
//  Piece.swift
//  Lab2
//
//  Created by Ts SaM on 24/3/2023.
//

import Foundation

class Piece: CustomStringConvertible, Equatable {
  private(set) var value: Int
  private(set) var isWhite: Bool
  
  init(value: Int, isWhite: Bool) {
    self.value = value
    self.isWhite = isWhite
  }
  
  func getValue() -> Int {
    return value
  }
  
  func setValue(newValue: Int) {
    value = newValue
  }
  
  
  var description: String {
    return "\(self.isWhite ? "White" : "Black") \(type(of: self)) (value=\(value))"
  }
  
  func move() {
  }
  
  static func == (lhs: Piece, rhs: Piece) -> Bool {
    return lhs.value == rhs.value && lhs.isWhite == rhs.isWhite
  }
}

class Pawn: Piece {
  var promoted: Bool
  var newPiece: Piece?
  
  init(value: Int, isWhite: Bool, promoted: Bool, newPiece: Piece?) {
    self.promoted = promoted
    self.newPiece = newPiece
    super.init(value: value, isWhite: isWhite)
  }
  
  override var description: String {
    if promoted, let newPiece = newPiece {
      return "Pawn(value=\(value), isWhite=\(isWhite), promoted=\(promoted), newPiece=\(newPiece))"
    }
    return "Pawn(value=\(value), isWhite=\(isWhite), promoted=\(promoted))"
  }
  
  override func move() {
    print("Move: Forward 1")
  }
  
  static func == (lhs: Pawn, rhs: Pawn) -> Bool {
    if lhs.promoted != rhs.promoted {
      return false
    }
    if lhs.promoted && rhs.promoted {
      return lhs.newPiece == rhs.newPiece
    }
    return lhs.value == rhs.value && lhs.isWhite == rhs.isWhite
  }
}

class Knight: Piece {
  override var description: String {
    return "Knight(value=\(value), isWhite=\(isWhite))"
  }
  
  override func move() {
    print("Move: Like an L")
  }
}

class Bishop: Piece {
  override var description: String {
    return "Bishop(value=\(value), isWhite=\(isWhite))"
  }
  
  override func move() {
    print("Move: Diagonally")
  }
}

class Rook: Piece {
  override var description: String {
    return "Rook(value=\(value), isWhite=\(isWhite))"
  }
  
  override func move() {
    print("Move: Horizontally or vertically")
  }
}

class Queen: Piece {
  override var description: String {
    return "Queen(value=\(value), isWhite=\(isWhite))"
  }
  
  override func move() {
    print("Move: Like bishop and rook")
  }
}

class King: Piece {
  override var description: String {
    return "King(value=\(value), isWhite=\(isWhite))"
  }
  
  override func move() {
    print("Move: One square")
  }
}
