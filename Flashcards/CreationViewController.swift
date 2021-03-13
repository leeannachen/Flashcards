//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Lee Anna Chen on 3/12/21.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    @IBAction func didTapOnDone(_ sender: Any) {
//      if the inputs are not empty
        if questionTextField.text != "" || answerTextField.text != "" {
        //      save question and answer variables
                let questionText = questionTextField.text
                let answerText = answerTextField.text
                
        //      access the updateFlashcard function from flascardsController and pass in the
        //      parameters
                flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
                
                dismiss(animated: true)
        }
        else{
            let alert = UIAlertController(title: "Missing text", message: "Please enter both a question and an answer", preferredStyle: UIAlertController.Style.alert )
            
            alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))

            present(alert, animated: true)
            
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
