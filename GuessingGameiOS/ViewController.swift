//
//  ViewController.swift
//  GuessingGameiOS
//
//  Created by Keano Bellmore on 3/12/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessField: UITextField!
    @IBOutlet weak var userFeedbackLabel: UILabel!
    
    @IBOutlet weak var userGuessButton: UIButton!
    @IBOutlet weak var rulesLabel: UILabel!

    @IBOutlet weak var imageLabel: UIImageView!
    var randomNumber = Int(arc4random_uniform(100))
   
    var guessTooHigh = "Guess too high, guess again!"
    var guessTooLow = "Guess too low, guess again!"
    var guessRight = "You're correct! 🤩"
    var userGuesses = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func guessButtonPressed(_ sender: Any) {
        print(randomNumber)
        if let guess = Int(userGuessField.text!) {
         if userGuessButton.titleLabel?.text! == "Play again!"{
            userGuesses = 5
            randomNumber = Int(arc4random_uniform(100))
            userGuessButton.setTitle("Guess!", for: .normal)
            userFeedbackLabel.text = ""
        }else if guess == randomNumber {
            userFeedbackLabel.text = guessRight
            view.endEditing(true)
            self.view.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            self.imageLabel.image = #imageLiteral(resourceName: "Image")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                self.imageLabel.image = #imageLiteral(resourceName: "Image-2")
            }
            
        userGuessButton.setTitle("Play again!", for: .normal)
            }else if userGuesses == 1 {
            userFeedbackLabel.text = """
            The correct answer is \(randomNumber).
            """
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            self.imageLabel.image = #imageLiteral(resourceName: "Image-1")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                self.imageLabel.image = #imageLiteral(resourceName: "Image-2")
            }
            userGuessButton.setTitle("Play again!", for: .normal)
    
        }else if guess > randomNumber {
            userGuesses -= 1
            userFeedbackLabel.text = "\(guessTooHigh) You have \(userGuesses) remaining"
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
             self.imageLabel.image = #imageLiteral(resourceName: "Image-1")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                self.imageLabel.image = #imageLiteral(resourceName: "Image-2")
            }
        }else if guess < randomNumber {
            userGuesses -= 1
            userFeedbackLabel.text = "\(guessTooLow) You have \(userGuesses) remaining"
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            self.imageLabel.image = #imageLiteral(resourceName: "Image-1")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                self.imageLabel.image = #imageLiteral(resourceName: "Image-2")
            }
        }

        } else {
            userFeedbackLabel.text = "Please enter a number."
        }
    
    }
}
