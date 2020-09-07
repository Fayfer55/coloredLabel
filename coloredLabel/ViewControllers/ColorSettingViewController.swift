//
//  ViewController.swift
//  coloredLabel
//
//  Created by Кирилл Файфер on 22.08.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

import UIKit

class ColorSettingViewController: UIViewController {
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var coloredView: UIView!
    
    var backgroundView: UIColor!
    var redColorSlider: Float!
    var greenColorSlider: Float!
    var blueColorSlider: Float!
    
    var delegate: SaveColorDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredView.layer.cornerRadius = 15
        slidersChange()
        
        updateTextValue()
        updateColor()
    }
    
    @IBAction func colorChange() {
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
        
        updateColor()
    }
    
    @IBAction func changeColorButton() {
        delegate.changeColorBackground(redSlider.value,
                                       greenSlider.value,
                                       blueSlider.value)
        
        dismiss(animated: true, completion: nil)
    }
    
    private func slidersChange() {
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .cyan
        
        redSlider.value = redColorSlider
        greenSlider.value = greenColorSlider
        blueSlider.value = blueColorSlider
    }
    
    private func updateColor() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                              green: CGFloat(greenSlider.value),
                                              blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    private func updateTextValue() {
        redValue.text = String(format: "%.2f", redColorSlider)
        greenValue.text = String(format: "%.2f", greenColorSlider)
        blueValue.text = String(format: "%.2f", blueColorSlider)
    }
}
