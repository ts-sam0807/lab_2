//
//  main.swift
//  Lab2
//
//  Created by Ts SaM on 24/3/2023.
//

import Foundation

let pieces: [Piece] = [
  Pawn(value: 1, isWhite: true, promoted: false, newPiece: nil),
  Knight(value: 2, isWhite: true),
  Bishop(value: 3, isWhite: true),
  Rook(value: 5, isWhite: true),
  Queen(value: 9, isWhite: true),
  King(value: 1000, isWhite: true),
  Pawn(value: 1, isWhite: true, promoted: true, newPiece: Queen(value: 9, isWhite: true)),
]

for piece in pieces {
  print(piece.description)
  piece.move()
  print()
}

let p1 = Pawn(value: 1, isWhite: true, promoted: true, newPiece: Queen(value: 9, isWhite: true))
let p2 = Pawn(value: 1, isWhite: true, promoted: false, newPiece: nil)
let p3 = Pawn(value: 1, isWhite: false, promoted: false, newPiece: nil)
let p4 = Pawn(value: 1, isWhite: false, promoted: true, newPiece: Queen(value: 9, isWhite: false))
let p5 = Pawn(value: 1, isWhite: true, promoted: true, newPiece: Knight(value: 1000, isWhite: true))

print("p1 == p2: \(p1 == p2)") // false
print("p1 == p4: \(p1 == p4)") // false
print("p1 == p5: \(p1 == p5)") // false
print("p2 == p3: \(p2 == p3)") // false
print("p4 == p5: \(p4 == p5)") // false
