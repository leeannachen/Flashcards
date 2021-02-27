//
//  ViewController.swift
//  Flashcards
//
//  Created by Lee Anna Chen on 2/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var question: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // How to get the borders?
        question.layer.cornerRadius = 10
        answer.layer.cornerRadius = 10
    }
        
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        question.isHidden = true
    }
    
}

