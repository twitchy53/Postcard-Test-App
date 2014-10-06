//
//  ViewController.swift
//  Postcard
//
//  Created by Joseph Shulman on 11/09/2014.
//  Copyright (c) 2014 Solution53. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // code will evaluate when we press the button
        
        //What happens with the Message text when button is pressed
        messageLabel.hidden = false  //starts off hidden
        messageLabel.text = enterMessageTextField.text//takes content
        messageLabel.textColor = UIColor.redColor()//changes colour
        enterMessageTextField.text = "" //removes content if blank
        enterMessageTextField.resignFirstResponder() //hides keyboard
        
        //what happens with the Name text when the button is pressed
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Message Sent", forState: UIControlState.Normal)

    }

}

