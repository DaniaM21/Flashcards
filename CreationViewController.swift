//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Dania Magana on 9/25/22.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBOutlet weak var extraAnswerOneTextField: UITextField!
    @IBOutlet weak var extraAnswerTwoTextField: UITextField!
    
    var initialQuestion: String?
    var initialAnswer: String?
    var initialExtraAnswerOne: String?
    var initialExtraAnswerTwo: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
        extraAnswerOneTextField.text = initialExtraAnswerOne
        extraAnswerTwoTextField.text = initialExtraAnswerTwo
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        
        // Get the text in the question text field
        let questionText = questionTextField.text
        
        // Get the text in the answer text field
        let answerText = answerTextField.text
        
        // Get the text in the extra answer #1 field
        let extraAnswerOneText = extraAnswerOneTextField.text
        
        // Get the text in the extra answer #2 field
        let extraAnswerTwoText = extraAnswerTwoTextField.text
        
        // Check if text fields empty
        if questionText == nil || answerText == nil || extraAnswerOneText == nil || extraAnswerTwoText == nil || questionText!.isEmpty || answerText!.isEmpty || extraAnswerOneText!.isEmpty || extraAnswerTwoText!.isEmpty {
            
            // Show error
            let alert = UIAlertController(title: "Missing text", message: "You need to enter a question, answer and two extra answers", preferredStyle: .alert)
            present(alert, animated: true)
            
            // Dismiss alert
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            
        } else {
            // Call the function to update the flashcard
            flashcardsController.updateFlashcard(question: questionText!, answer: answerText!, extraAnswerOne: extraAnswerOneText!, extraAnswerTwo: extraAnswerTwoText!)
            
            // Dismiss
            dismiss(animated: true)
        }
    }

}
