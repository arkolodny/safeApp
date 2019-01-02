//
//  ViewController2.swift
//  safeApp
//
//  Created by ADAM KOLODNY on 12/26/18.
//  Copyright © 2018 ADAM KOLODNY. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController2: UIViewController {

    @IBAction func action(_ sender: UIButton)
    {
        try! Auth.auth().signOut()
        self.performSegue(withIdentifier: "segue2", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       print(Auth.auth().currentUser?.email)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
