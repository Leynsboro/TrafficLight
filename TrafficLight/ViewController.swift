//
//  ViewController.swift
//  TrafficLight
//
//  Created by Илья Гусаров on 07.04.2022.
//

import UIKit

enum Colors {
    case red, yellow, green
}

class ViewController: UIViewController {
    

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButtonOutlet: UIButton!
    
    var color = Colors.red
    
    private let turnOn: CGFloat = 1
    private let turnOff: CGFloat = 0.3
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButtonOutlet.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    
    @IBAction func startButtonPressed() {
        startButtonOutlet.setTitle("NEXT", for: .normal)
        
        switch color {
        case .red:
            turn(on: redLight, andOf: greenLight, color: .yellow)
        case .yellow:
            turn(on: yellowLight, andOf: redLight, color: .green)
        case .green:
            turn(on: greenLight, andOf: yellowLight, color: .red)
        }
    }
}

extension ViewController {
    private func turn(on lightOn: UIView, andOf lightOff: UIView, color: Colors) {
        lightOn.alpha = turnOn
        lightOff.alpha = turnOff
        self.color = color
    }
}

