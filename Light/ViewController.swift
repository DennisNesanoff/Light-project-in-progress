//
//  ViewController.swift
//  Light
//
//  Created by Dennis Nesanoff on 16/12/2018.
//  Copyright © 2018 Dennis Nesanoff. All rights reserved.
//

import UIKit
import AVFoundation // A framework for working with audio-visual resources, cameras, control devices, process audio and configure the interaction with the audio system.

class ViewController: UIViewController {

    var lightOn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn = !lightOn
        
        updateUI()
    }

    func updateUI() {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            view.backgroundColor = .black
            do {
                try dev.lockForConfiguration()
                dev.torchMode = lightOn ? .on : .off
                dev.unlockForConfiguration()
            } catch {
                print(error)
            }
        } else {
            view.backgroundColor = lightOn ? .white : .black
        }
//        view.backgroundColor = lightOn ? .white : .black
//        if lightOn {
//            view.backgroundColor = UIColor.white
//        } else {
//            view.backgroundColor = .black
//        }
    }
    
    // variable for hidding status bar
    override var prefersStatusBarHidden: Bool{
        return true
    }
}

