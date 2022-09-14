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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // gives the card and labels rounded corners
        card.layer.cornerRadius = 20.0
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        
        // adds shadows to card
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if frontLabel.isHidden == true {
            frontLabel.isHidden = false
        } else {
            frontLabel.isHidden = true
        }
    }
    
}

