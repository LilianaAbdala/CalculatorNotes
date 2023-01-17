//
//  Media.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 16/01/23.
//

import UIKit

class Average {
    
    var note1: Double?
    var note2: Double?
    var note3: Double?
    var note4: Double?
    
    func calculate(_ note1: Double,_ note2: Double,_ note3: Double,_ note4: Double) -> Double {
        return ((note1 + note2) + (note3 + note4)) / 4
    }
}
