//
//  InstructionsViewController.swift
//  GuessingGameiOS
//
//  Created by Keano Bellmore on 3/15/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    @IBOutlet weak var instructionsLabel: UILabel!
    
    var rulesLabelText = """
1. Guess a number between 1 and 100.
    
2. You have no more than 5 tries.
    
3. You will be told whether the number
            is higher or lower.
    
4. Click the "play again" button to
            play again
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instructionsLabel.text = rulesLabelText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
