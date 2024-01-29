//
//  ViewController.swift
//  TrafficLight
//
//  Created by User on 28.01.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    private var currentColor = CurrentLight.green
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        redView.layer.cornerRadius = redView.frame.width / 2
//        yellowView.layer.cornerRadius = yellowView.frame.width / 2
//        greenView.layer.cornerRadius = greenView.frame.width / 2
        
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }

    @IBAction func playButton(_ sender: UIButton) {
        
        if sender.currentTitle == "Start" {
            sender.setTitle("Next", for: .normal)
        }
        
        switch currentColor {
        case CurrentLight.red:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentColor = CurrentLight.yellow
        case CurrentLight.yellow:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            currentColor = CurrentLight.green
        case CurrentLight.green:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentColor = CurrentLight.red
        }
    }
    
}

// MARK: - CurrentLight
extension ViewController {
    enum CurrentLight {
        case red, yellow, green
    }
}
