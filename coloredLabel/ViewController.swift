//
//  ViewController.swift
//  coloredLabel
//
//  Created by Кирилл Файфер on 22.08.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var coloredView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slidersChange()
        viewChange()
    }

    @IBAction func redValueChange() {
        redValue.text = String(format: "%.2f", redSlider.value)
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func greenValueChange() {
         greenValue.text = String(format: "%.2f", greenSlider.value)
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func blueValueChange() {
         blueValue.text = String(format: "%.2f", blueSlider.value)
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
      private func slidersChange () {
          redSlider.minimumTrackTintColor = .red
          greenSlider.minimumTrackTintColor = .green
          blueSlider.minimumTrackTintColor = .cyan
      }
      private func viewChange () {
          coloredView.layer.cornerRadius = 15
      }
}


