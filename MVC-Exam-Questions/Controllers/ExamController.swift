//
//  ExamController.swift
//  MVC-Exam-Questions
//
//  Created by Vuslat Yolcu on 26.03.2023.
//

import Foundation
import UIKit

class ExamController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let questionsService = QuestionsService()
    private var questions: [Question] = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
        questions = questionsService.getAll()
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nc = segue.destination as? UINavigationController else { return }
        
        guard let addQuestionTVC = nc.viewControllers.first as? AddQuestionTableViewController else {
            return
        }
        
        addQuestionTVC.delegate = self
    }
    
}

extension ExamController: UITableViewDelegate {
    
}

extension ExamController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionTableViewCell", for: indexPath)
        cell.textLabel?.text = self.questions[indexPath.row].text
        return cell
    }
    
}

extension ExamController: AddQuestionDelegate {
    func addQuestionDidSaveQuestion(question: Question, controller: UIViewController) {
        questionsService.add(question: question)
        controller.dismiss(animated: true, completion: nil)
        
        questions = questionsService.getAll()
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
}
