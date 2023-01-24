//
//  Service.swift
//  CalculatorNotes
//
//  Created by Liliana Porto Abdala on 23/01/23.
//

import UIKit

class SubjectService {
    
    struct Subject: Codable  {
        
        var id: Int?
        
    }
    private let defaults = UserDefaults.standard
    private let key = "subjects"
    private var subjects: [Subject] {
        get {
            if let data = defaults.value(forKey: key) as? Data {
                return (try? PropertyListDecoder().decode([Subject].self, from: data)) ?? []
            }
            return []
        }
        set {
            defaults.set(try? PropertyListEncoder().encode(newValue), forKey: key)
        }
    }
    
    func createSubject(subject: Subject) {
        var newSubject = subject
        newSubject.id = subjects.count + 1
        subjects.append(newSubject)
        defaults.synchronize()
    }
    
    func readSubjects() -> [Subject] {
        return subjects
    }
    
    func updateSubject(subject: Subject) {
        if let index = subjects.firstIndex(where: { $0.id == subject.id }) {
            subjects[index] = subject
            defaults.synchronize()
        }
    }
    
    func deleteSubject(id: Int) {
        subjects.removeAll(where: { $0.id == id })
        defaults.synchronize()
    }
}
