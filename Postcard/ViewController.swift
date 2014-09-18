//
//  ViewController.swift
//  Postcard
//
//  Created by Meng Fung on 9/11/14.
//  Copyright (c) 2014 Meng Fung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        nameLabel.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.resignFirstResponder()
        nameLabel.hidden = nameLabel.hidden == false ? true : false
        messageLabel.hidden = messageLabel.hidden == false ? true : false
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

