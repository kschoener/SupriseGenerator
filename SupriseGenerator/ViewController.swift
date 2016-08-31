//
//  ViewController.swift
//  SupriseGenerator
//
//  Created by Kyle Schoener on 8/11/16.
//  Copyright © 2016 Kyle Schoener. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties
    
    @IBOutlet weak var surpriseNameLabel: UILabel!
    @IBOutlet weak var surpriseNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handle the text input from the user through delegate callbacks
        surpriseNameTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard after the user presses the 'Return' button on the keyboard
        // this also fires the 'textFieldDidEndEditing' function
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        surpriseNameLabel.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func generateSurpriseButton(sender: UIButton) {
        surpriseNameLabel.text = "generateSurpriseButton was pressed!"
    }
    
}

