//
//  ViewController.swift
//  Light
//
//  Created by Dennis Nesanoff on 16/12/2018.
//  Copyright © 2018 Dennis Nesanoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = false
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressd(_ sender: UIButton) {
        lightOn = !lightOn
        
        updateUI()
    }

    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
//        if lightOn {
//            view.backgroundColor = UIColor.white
//        } else {
//            view.backgroundColor = .black
//        }
    }
}

