//
//  Subject.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 20/01/23.
//

import Foundation

class Subject {
    var student: String?
    var name: String?
    var notes: [Double] = []
    
    func calculateAverage() -> Double {
        return notes.reduce(0.0, +) / Double(notes.count)
    }
}
