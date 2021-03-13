//
//  ViewController.swift
//  Flashcards
//
//  Created by Lee Anna Chen on 2/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var flashcardView: UIView!
    
    override func viewDidLoad() {
//        super.viewDidLoad()
//        // How to get the borders?
//        questionLabel.layer.cornerRadius = 100
//        answerLabel.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    }
        
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        questionLabel.isHidden = !questionLabel.isHidden
        print("Another tap")
    }
    
    func updateFlashcard(question: String, answer: String) {
        questionLabel.isHidden = false
        answerLabel.text = answer
        questionLabel.text = question
    }
    
}

