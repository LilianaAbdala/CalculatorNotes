//
//  Subject.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 20/01/23.
//

import Foundation

class Subject : Codable {
    var student: String?
    var name: String?
    var notes: [Double] = []
    var id: Int?
   
    func calculateAverage() -> Double {
        return notes.reduce(0.0, +) / Double(notes.count)
    }
}
