//
//  ViewController.swift
//  TrafficLight
//
//  Created by Евгений on 10.07.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var trafficLightBody: UIStackView!
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var trafficLightButtonStyle: UIButton!
    
    var lightSwitchNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightBody.layer.cornerRadius = 75
        trafficLightBody.layer.borderWidth = 4
        
        redLight.backgroundColor = UIColor.red.withAlphaComponent(0.2)
        redLight.layer.borderColor = UIColor.black.cgColor
        redLight.layer.cornerRadius = redLight.frame.height / 2
        redLight.layer.borderWidth = 2
        
        yellowLight.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
        yellowLight.layer.borderColor = UIColor.black.cgColor
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        yellowLight.layer.borderWidth = 2
        
        greenLight.backgroundColor = UIColor.green.withAlphaComponent(0.2)
        greenLight.layer.borderColor = UIColor.black.cgColor
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        greenLight.layer.borderWidth = 2
        
        trafficLightButtonStyle.layer.cornerRadius = trafficLightButtonStyle.frame.height / 2
        trafficLightButtonStyle.setTitle("START", for: .normal)
    }
    
    @IBAction func trafficLightButtonDidTap(_ sender: UIButton) {
        trafficLightButtonStyle.setTitle("NEXT", for: .normal)
        
        lightSwitchNumber += 1
        
        switch lightSwitchNumber {
        case 1:
            redLight.backgroundColor = UIColor.red
        case 2:
            redLight.backgroundColor = UIColor.red.withAlphaComponent(0.2)
            yellowLight.backgroundColor = UIColor.yellow
        case 3:
            yellowLight.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
            greenLight.backgroundColor = UIColor.green
        default:
            greenLight.backgroundColor = UIColor.green.withAlphaComponent(0.2)
            trafficLightButtonStyle.setTitle("START", for: .normal)
            lightSwitchNumber = 0
        }
    }
}
