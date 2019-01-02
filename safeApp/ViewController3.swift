//
//  ViewController3.swift
//  
//
//  Created by ADAM KOLODNY on 12/31/18.
//

import UIKit

class ViewController3: UIViewController {

    @IBAction func register(_ sender: UIButton)
    {
      self.performSegue(withIdentifier: "segue4", sender: self)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
