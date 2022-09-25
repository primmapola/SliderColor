//
//  ViewController.swift
//  SliderColor
//
//  Created by Grigory Don on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewSquare: UIView!
    
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var text3: UILabel!
    
  
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider3: UISlider!
    override func viewDidLoad() {
        
        viewSquare.layer.cornerRadius = 30
        
        text1.text = String(slider1.value)
        text1.textColor = UIColor.red

        text2.text = String(slider2.value)
        text2.textColor = UIColor.green

        text3.text = String(slider3.value)
        text3.textColor = UIColor.blue
    }

    @IBAction func sliderOneChange(_ sender: UISlider) {
        viewSquare.backgroundColor = UIColor(red: CGFloat(sender.value), green: CGFloat(slider2.value), blue: CGFloat(slider3.value), alpha: 1)
        text1.text = String(round(sender.value * 100) / 100)
    }
    
    @IBAction func sliderTwoChange(_ sender: UISlider) {
        viewSquare.backgroundColor = UIColor(red: CGFloat(slider1.value), green: CGFloat(sender.value), blue: CGFloat(slider3.value), alpha: 1)
        text2.text = String(round(sender.value * 100) / 100)
    }
    @IBAction func sliderThreeChange(_ sender: UISlider) {
        viewSquare.backgroundColor = UIColor(red: CGFloat(slider1.value), green: CGFloat(slider2.value), blue: CGFloat(sender.value), alpha: 1)
        text3.text = String(round(sender.value * 100) / 100)
    }
}

