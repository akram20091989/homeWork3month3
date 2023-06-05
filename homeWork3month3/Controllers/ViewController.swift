//
//  ViewController.swift
//  homeWork3month3
//
//  Created by bond on 24/5/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func loginButtonTapped(_ sender:UIButton){
        if tf.text?.isEmpty == false{
            performSegue(withIdentifier: "GotoContactsVC", sender: self)
        }
    }
    
}

