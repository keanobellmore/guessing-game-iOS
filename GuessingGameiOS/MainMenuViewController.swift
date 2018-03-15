//
//  MainMenuViewController.swift
//  GuessingGameiOS
//
//  Created by Keano Bellmore on 3/15/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var mainMenuLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let underlineAttribute = [NSAttributedStringKey.underlineStyle: NSUnderlineStyle.styleSingle.rawValue]
        let underlineAttributedString = NSAttributedString(string: "Main Menu", attributes: underlineAttribute)
        mainMenuLabel.attributedText = underlineAttributedString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
    }
    

}
