//
//  ViewController.swift
//  lrn1
//
//  Created by Ryan Lee on 30/11/2014.
//  Copyright (c) 2014 Ryan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textEnterName: UITextField!

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textEnterMessage: UITextField!
    
    @IBOutlet weak var textLabel2: UILabel!
    @IBOutlet weak var mailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    @IBAction func actionSendMail(sender: UIButton) {
        textLabel.hidden = false
        textLabel.text = textEnterMessage.text
        textLabel.textColor = UIColor.redColor()
        
        textLabel2.hidden = false
        textLabel2.text = textEnterName.text
        textLabel2.textColor = UIColor.blueColor()
        
        textEnterName.text = ""
        textEnterName.resignFirstResponder()
        
        textEnterMessage.text = ""
        textEnterMessage.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Selected)
    }

}

// 1:24:00
