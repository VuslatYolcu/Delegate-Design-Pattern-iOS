//
//  QuestionsService.swift
//  MVC-Exam-Questions
//
//  Created by Vuslat Yolcu on 27.03.2023.
//

import Foundation

class QuestionsService {
    
    private var questions = [Question]()
    
    func getAll() -> [Question] {
        
        return questions
    }
    
    func add(question: Question) {
        return questions.append(question)
    }
}
