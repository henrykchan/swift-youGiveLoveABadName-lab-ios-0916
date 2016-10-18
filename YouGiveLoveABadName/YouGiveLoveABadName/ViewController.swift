//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bonJovicenterY: NSLayoutConstraint!
    var bonJoviwidth: NSLayoutConstraint!
    var bonJoviHeight: NSLayoutConstraint!
    
    
    @IBOutlet weak var bonJoviImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        bonJoviImage.translatesAutoresizingMaskIntoConstraints = false
        
        //constraints
        self.bonJovicenterY = self.bonJoviImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        self.bonJovicenterY.isActive = true
        
        self.bonJoviwidth = self.bonJoviImage.widthAnchor.constraint(equalTo: self.view.widthAnchor)
        self.bonJoviwidth.isActive = true
        
        self.bonJoviHeight = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
        self.bonJoviHeight.isActive = true
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        
        
        UIView.animateKeyframes(withDuration: 1.0, delay: 0.0, options: [.repeat,.autoreverse] , animations: {
            
            
            
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.3, animations: {
                
                UIView.setAnimationRepeatCount(1)
                self.bonJoviHeight.isActive = false
                self.bonJoviHeight = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2)
                self.bonJoviHeight.isActive = true
                
                
                self.view.layoutIfNeeded()
                
                
            })
            
            
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.3, animations: {
                
                UIView.setAnimationRepeatCount(1)
                self.bonJoviHeight.isActive = false
                self.bonJoviHeight = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor)
                self.bonJoviHeight.isActive = true
                
                self.view.layoutIfNeeded()
            })
            
            }, completion: { _ in
                
                print ("123")
                self.bonJoviHeight.isActive = false
                self.bonJoviHeight = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
                self.bonJoviHeight.isActive = true
                
                
                
                self.view.layoutIfNeeded()
                
                
        })
        
        
        
    }
    
    
    
}

