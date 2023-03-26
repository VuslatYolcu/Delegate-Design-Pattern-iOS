//
//  ExamController.swift
//  MVC-Exam-Questions
//
//  Created by Vuslat Yolcu on 26.03.2023.
//

import Foundation
import UIKit

class ExamController: UIViewController {
    
    @IBOutlet weak var questionView: QuestionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let question = Question(text: "Is Earth round?", point: 10, isCorrect: true)
        questionView.questionTextLabel.text = question.text
    }
}
