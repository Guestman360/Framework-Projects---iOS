//
//  ViewController.swift
//  Animation-Practice
//
//  Created by The Guest Family on 6/11/17.
//  Copyright © 2017 AlphaApplications. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var passwordTextField: ShakingTextField! //Good practice to creat animations in different file then subclass the outlet
    @IBOutlet weak var avatarImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        
        avatarImage.isUserInteractionEnabled = true
        //avatarImage.layer.cornerRadius = 0.5
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
        tapGestureRecognizer.numberOfTapsRequired = 1
        avatarImage.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    func addPulse() {
        let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: avatarImage.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.blue.cgColor
        
        self.view.layer.insertSublayer(pulse, below: avatarImage.layer)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        passwordTextField.shake()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

