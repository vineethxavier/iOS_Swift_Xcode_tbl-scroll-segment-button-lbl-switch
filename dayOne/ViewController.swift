//
//  ViewController.swift
//  dayOne
//
//  Created by Vineeth Xavier on 9/28/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//
//tbl-scroll-segment-button-lbl,switch
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var incrementBtnOutlet: UIButton!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var segmentCtrlOutlet: UISegmentedControl!

 
    @IBOutlet weak var dayCountOutlet: UILabel!
 
    @IBOutlet weak var sliderVolume: UILabel!
    @IBAction func slider(_ sender: UISlider) {
       
        let currentSliderValue = Int(sender.value)
        sliderVolume.text = "Volume: \(currentSliderValue)"
    }
    
    
    
    var currentNumber:Int?
    
    func defView(){
    segmentCtrlOutlet.selectedSegmentIndex = 2
    segmentCtrlAction(segmentCtrlOutlet)
    }
    
    
    @IBAction func enableDiableIncButton(_ sender: Any) {
        if switchButton.isOn{
            currentNumber = (Int)(counterLabel.text!)!
            counterLabel.text = (String)(currentNumber! + 1)
            incrementBtnOutlet.isEnabled = true
        }else{
            //switchButton.isEnabled = false
            incrementBtnOutlet.isEnabled = false
        }
        
    }
    @IBAction func incrementButton(_ sender: UIButton) {
        var currentNumber:Int?
        currentNumber = (Int)(counterLabel.text!)!
        counterLabel.text = (String)(currentNumber! + 1)
    }
    @IBOutlet weak var counterLabel: UILabel!
   
    func defaultViewVX( val:Int){
        
        if val == 0 {
        switchButton.isHidden = false
        incrementBtnOutlet.isHidden = false
        incrementBtnOutlet.isHidden = false
        counterLabel.isHidden = false
        }
        else{
            
            switchButton.isHidden = true
            incrementBtnOutlet.isHidden = true
            incrementBtnOutlet.isHidden = true
            counterLabel.isHidden = true
        }
    }

    @IBAction func segmentCtrlAction(_ sender: Any) {
        if segmentCtrlOutlet.selectedSegmentIndex == 0{
            dayCountOutlet.text = "01"
            defaultViewVX(val: 0)
        }
        if segmentCtrlOutlet.selectedSegmentIndex == 1{
            dayCountOutlet.text = "02"
            defaultViewVX(val: 1)
            
        }
        if segmentCtrlOutlet.selectedSegmentIndex == 2{
            dayCountOutlet.text = "03"
            defaultViewVX(val: 0)
        }
        if segmentCtrlOutlet.selectedSegmentIndex == 3{
            dayCountOutlet.text = "04"
            defaultViewVX(val: 1)
        }
    }
    var simpleView1: UIView!
    var simpleView2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        defView()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

