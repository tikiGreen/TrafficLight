//
//  ViewController.swift
//  TrafficLight
//
//  Created by User on 28.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    private var currentColor = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
        // Do any additional setup after loading the view.
    }

    @IBAction func playButton(_ sender: UIButton) {
        
        switch currentColor {
        case "red":
            redView.alpha = 0.3
            yellowView.alpha = 1
            currentColor = "yellow"
        case "yellow":
            yellowView.alpha = 0.3
            greenView.alpha = 1
            currentColor = "green"
        case "green":
            greenView.alpha = 0.3
            redView.alpha = 1
            currentColor = "red"
        default:
            currentColor = "red"
            redView.alpha = 1
            sender.setTitle("Next", for: .normal)
        }
    }
    
}

