//
//  QuestionsService.swift
//  MVC-Exam-Questions
//
//  Created by Vuslat Yolcu on 27.03.2023.
//

import Foundation

class QuestionsService {
    
    func getAll() -> [Question] {
        let questions = [Question(text: "Is Earth round?", point: 10, isCorrect: true),
                         Question(text: "Is 2+2 = 4", point: 10, isCorrect: true),
                         Question(text: "Is 2*10 = 100", point: 10, isCorrect: false)]
        return questions
    }
}
