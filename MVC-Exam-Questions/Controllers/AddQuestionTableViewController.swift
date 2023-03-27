//
//  AddQuestionTableViewController.swift
//  MVC-Exam-Questions
//
//  Created by Vuslat Yolcu on 27.03.2023.
//

import Foundation
import UIKit

protocol AddQuestionDelegate {
    func addQuestionDidSaveQuestion(question: Question, controller: UIViewController)
}

class AddQuestionTableViewController: UITableViewController {
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var pointTextField: UITextField!
    @IBOutlet weak var isCorrectSegmentedControl: UISegmentedControl!
    
    var delegate: AddQuestionDelegate!
    
    private var isCorrect: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.isCorrectSegmentedControl.addTarget(self, action: #selector(isCorrectSegmentedControlSelected), for: .valueChanged)
    }
    
    @objc func isCorrectSegmentedControlSelected(segmentedControl: UISegmentedControl) {
        isCorrect = segmentedControl.selectedSegmentIndex == 0 ? true : false
    }
    
    @IBAction func close() {
        
    }
    
    @IBAction func save() {
        let text = questionTextField.text!
        let point = Double(pointTextField.text!)!
        
        let question = Question(text: text, point: point, isCorrect: isCorrect)
        
        delegate.addQuestionDidSaveQuestion(question: question, controller: self)
    }
    
}
