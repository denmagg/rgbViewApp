//
//  ViewController.swift
//  HW2
//
//  Created by Denis Medvedev on 08/01/2021.
//  Copyright © 2021 Denis Medvedev. All rights reserved.
//

import UIKit
import UItextFi



class ViewController: UIViewController {
    //view
    @IBOutlet var rgbViewer: UIView!
    //sliders
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    //labels
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    //text fields
    @IBOutlet var redField: UITextField!
    @IBOutlet var greenField: UITextField!
    @IBOutlet var blueField: UITextField!
    
    var redValue: CGFloat = 0.0
    var greenValue: CGFloat = 0.0
    var blueValue: CGFloat = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting tint color of sliders
        redColorSlider.tintColor = .red
        greenColorSlider.tintColor = .green
        blueColorSlider.tintColor = .blue
        //setting rounding corners  for view
        rgbViewer.layer.cornerRadius = 5
        //setting start value for value labels
        redValueLabel.text = String(redColorSlider.value)
        greenValueLabel.text = String(greenColorSlider.value)
        blueValueLabel.text = String(blueColorSlider.value)
    }
    
    @IBAction func redColorBrightness() {
        redValueLabel.text = String(round(redColorSlider.value*100)/100)
        redField.text = String(round(redColorSlider.value*100)/100)
        rgbViewer.backgroundColor = UIColor(red: CGFloat(redColorSlider!.value), green: CGFloat(greenColorSlider!.value), blue: CGFloat(blueColorSlider!.value), alpha: 1.0)
    }
    
    @IBAction func greenColorBrightness() {
        greenValueLabel.text = String(round(greenColorSlider.value*100)/100)
        greenField.text = String(round(greenColorSlider.value*100)/100)
        greenValue = CGFloat(greenColorSlider.value)
        rgbViewer.backgroundColor = UIColor(red: CGFloat(redColorSlider!.value), green: CGFloat(greenColorSlider!.value), blue: CGFloat(blueColorSlider!.value), alpha: 1.0)
    }
    
    @IBAction func blueColorBrightness() {
        blueValueLabel.text = String(round(blueColorSlider.value*100)/100)
        blueField.text = String(round(blueColorSlider.value*100)/100)
        blueValue = CGFloat(blueColorSlider.value)
        rgbViewer.backgroundColor = UIColor(red: CGFloat(redColorSlider!.value), green: CGFloat(greenColorSlider!.value), blue: CGFloat(blueColorSlider!.value), alpha: 1.0)
    }
    
}

