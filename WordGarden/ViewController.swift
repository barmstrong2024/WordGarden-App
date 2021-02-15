//
//  ViewController.swift
//  WordGarden
//
//  Created by Brendan Armstrong on 2/14/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsInGameLabel: UILabel!
    
    @IBOutlet weak var wordBeingRevealedLabel: UILabel!
    @IBOutlet weak var guessedLetterTextField: UITextField!
    @IBOutlet weak var guessedLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessedLetterTextField.text!
        guessedLetterButton.isEnabled = !(text.isEmpty)
        }
    
    func updateUIAfterGuess(){
        guessedLetterTextField.resignFirstResponder()
        guessedLetterTextField.text! = ""
        guessedLetterButton.isEnabled = false
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        var text = sender.text!
        text = String(text.last ?? " ").trimmingCharacters(in: .whitespaces)
        sender.text = text
        guessedLetterButton.isEnabled = !(text.isEmpty)
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        //this dismisses the keyboard
        updateUIAfterGuess()
    }
    
    
    @IBAction func guessALetterButtonPressed(_ sender: UIButton) {
        //this dismisses the keyboard
        updateUIAfterGuess()
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    

}

