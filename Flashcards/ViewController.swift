//
//  ViewController.swift
//  Flashcards
//
//  Created by Dania Magana on 9/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // gives the card/labels/buttons rounded corners
        card.layer.cornerRadius = 20.0
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        btnOptionOne.layer.cornerRadius = 20.0
        btnOptionTwo.layer.cornerRadius = 20.0
        btnOptionThree.layer.cornerRadius = 20.0
        
        // adds shadows to card
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        // applies shadow to labels
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        
        // adds colored border to buttons
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = UIColor.systemOrange.cgColor
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = UIColor.systemOrange.cgColor
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = UIColor.systemOrange.cgColor
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if frontLabel.isHidden == true {
            frontLabel.isHidden = false
        } else {
            frontLabel.isHidden = true
        }
    }
    
    @IBAction func didTapOptionOne(_ sender: Any) {
        btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        frontLabel.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
    
}
