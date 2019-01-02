//
//  ViewController.swift
//  safeApp
//
//  Created by ADAM KOLODNY on 12/26/18.
//  Copyright © 2018 ADAM KOLODNY. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var segmentControll: UISegmentedControl!
    @IBOutlet weak var actionButton: UIButton!
    
    @IBAction func action(_ sender: UIButton)
    {
      if emailText.text != "" && passwordText.text != ""
      {
        if segmentControll.selectedSegmentIndex == 0 // login user
        {
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
                if user != nil
                {
                  //sign in user successful
                    self.performSegue(withIdentifier: "segue", sender: self)
                }
                else
                {
                    if let myError = error?.localizedDescription
                    {
                        print((myError))
                    }
                    else
                    {
                    print("ERROR")
                    }
                }
            }
            }
        else //sign up user
        {
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
                if user != nil
                {
                   self.performSegue(withIdentifier: "segue3", sender: self)
                }
                else
                {
                    if let myError = error?.localizedDescription
                    {
                        print((myError))
                    }
                    else
                    {
                        print("ERROR")
                    }
                }
            }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

