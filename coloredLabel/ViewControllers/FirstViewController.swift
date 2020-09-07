//
//  FirstViewController.swift
//  coloredLabel
//
//  Created by Кирилл Файфер on 05.09.2020.
//  Copyright © 2020 Кирилл Файфер. All rights reserved.
//

import UIKit

protocol SaveColorDelegate {
    func changeColorBackground(_ red: Float, _ green: Float, _ blue: Float)
}

class FirstViewController: UIViewController {
    @IBOutlet var backgroundView: UIView!
    
    private var redSliderValue: Float = 1
    private var greenSliderValue: Float = 1
    private var blueSliderValue: Float = 1
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingVC = segue.destination as! ColorSettingViewController
        
        settingVC.delegate = self
        
        settingVC.redColorSlider = redSliderValue
        settingVC.greenColorSlider = greenSliderValue
        settingVC.blueColorSlider = blueSliderValue
    }
}

extension FirstViewController: SaveColorDelegate {
    func changeColorBackground(_ red: Float,_ green: Float, _ blue: Float) {
        backgroundView.backgroundColor = UIColor(red: CGFloat(red),
                                                 green: CGFloat(green),
                                                 blue: CGFloat(blue),
                                                 alpha: 1)
        
        redSliderValue = red
        greenSliderValue = green
        blueSliderValue = blue
    }
}
