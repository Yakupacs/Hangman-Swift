//
//  ViewController.swift
//  Hangman
//
//  Created by Yakup Acis on 8/19/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func startFunc(_ sender: Any) {
        performSegue(withIdentifier: "toGame", sender: nil)
    }

}

