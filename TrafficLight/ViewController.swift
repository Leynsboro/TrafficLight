//
//  ViewController.swift
//  TrafficLight
//
//  Created by Илья Гусаров on 07.04.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButtonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        startButtonOutlet.layer.cornerRadius = 10
    }
    
    
    @IBAction func startButtonPressed() {
    }
    
    

}

