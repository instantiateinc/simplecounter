//
//  ViewController.swift
//  Simple Counter
//
//  Created by Gabriel Mesquita on 2018-09-29.
//  Copyright © 2018 Gabriel Mesquita. All rights reserved.
//
// MARK:- Frameworks
import UIKit

// MARK:- Simple Counter View Controller
class SimpleCounterViewController: UIViewController {

    
    // MARK:- Properties
    var counter = SCDataModel()
    
    
    
    
    // MARK:- Outlets
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var counterView: UIView!
    
    
    // MARK:- Actions
    
    
    @IBAction func didPressMinus(_ sender: UIButton) {
        counter.increment(by: -1)
        updateLabelValue(to: counter.value)
        
        UIView.animate(withDuration: 0.7) {
            self.counterView.transform = CGAffineTransform(translationX: 0, y: 50)
        }
    }
    
    
    
    
    @IBAction func didPressPlus(_ sender: UIButton) {
        counter.increment(by: 1)
        updateLabelValue(to: counter.value)
        UIView.animate(withDuration: 0.7) {
            self.counterView.transform = CGAffineTransform(translationX: 0, y: -50)
        }
    }
    
    
    
    private func updateLabelValue(to: Int) {
        counterLabel.text = "\(to)"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        counterView.layer.cornerRadius = counterView.frame.height / 2
        minusButton.layer.cornerRadius = minusButton.frame.height / 2
        plusButton.layer.cornerRadius = plusButton.frame.height / 2
        
    }

    
   


}

