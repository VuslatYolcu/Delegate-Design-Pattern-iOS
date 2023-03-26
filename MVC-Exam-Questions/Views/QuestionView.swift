//
//  QuestionView.swift
//  MVC-Exam-Questions
//
//  Created by Vuslat Yolcu on 26.03.2023.
//

import Foundation
import UIKit

class QuestionView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var questionTextLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("QuestionView", owner: self, options: nil)
        contentView.frame = self.bounds // content view will fill the QuestionView
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // Inside the parent view, content view will have flexible width and height
    }
    
}
