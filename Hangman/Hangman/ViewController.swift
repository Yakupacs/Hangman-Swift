//
//  ViewController.swift
//  Hangman
//
//  Created by Yakup Acis on 8/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func startFunc(_ sender: Any) {
        if (nameTextfield.text != ""){
            performSegue(withIdentifier: "toGame", sender: nil)
        }
        else{
            let warning = UIAlertController(title: "Warning!", message: "Please enter a name.", preferredStyle: .alert)
            let okey = UIAlertAction(title: "Okey", style: UIAlertAction.Style.default, handler: { (UIAlertAction) in
            })
            warning.addAction(okey)
            self.present(warning, animated: true, completion: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGame"{
            let destVC = segue.destination as! ViewControllerGame
            destVC.name = nameTextfield.text!
        }
    }
}

