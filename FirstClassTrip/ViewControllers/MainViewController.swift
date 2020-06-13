//
//  ViewController.swift
//  TripPlanProject2020
//
//  Created by jangwon moon on 2020/06/13.
//  Copyright © 2020 jangwon moon. All rights reserved.
//
import UIKit
import Lottie



class MainViewController: UIViewController {
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "First Class"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "11425-travel-icons-luggage")
        animView.frame = CGRect(x:0, y:0, width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFill
        
        
        return animView
        
    }()
 
    // If view is made
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // load the animationView in viewDidLoad
        self.view.backgroundColor = .black
        
        self.view.addSubview(animationView)
        animationView.center = view.center
        
        // start the animation effect
        animationView.play{ (finish) in
            //
            print("Animation end")
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
        }
        

    }
}
