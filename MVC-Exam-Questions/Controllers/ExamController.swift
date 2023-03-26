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
        
        questionView.questionTextLabel.text = "Is Earth round?"
    }
}
