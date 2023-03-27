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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
    }
}

extension ExamController: UITableViewDelegate {
    
}

extension ExamController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionTableViewCell", for: indexPath)
        return cell
    }
    
    
}
