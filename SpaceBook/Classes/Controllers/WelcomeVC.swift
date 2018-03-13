//
//  WelcomeVC.swift
//  SpaceBook
//
//  Created by Ivan.
//  Copyright © 2017 Ivna. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Class

class WelcomeVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet fileprivate weak var welcome: UIView!
    @IBOutlet fileprivate weak var logoIV: UIImageView!
    @IBOutlet fileprivate weak var logIn: UIView!
    @IBOutlet fileprivate weak var signUp: UIView!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override func viewDidLoad() {

        super.viewDidLoad()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupText()
        self.setupData()
        self.setupLocalization()
    }

    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    fileprivate func setupUI() {

        // Navigation bar
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        // welcome
        let gradientOne = CAGradientLayer()
        gradientOne.frame = self.welcome.bounds
        gradientOne.colors = [UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 1).cgColor, UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1).cgColor]
        gradientOne.locations = [0.000, 1.000]
        gradientOne.startPoint = CGPoint(x: 0.310892751009558, y: 1.09827011481677)
        gradientOne.endPoint = CGPoint(x: 0.689107248990442, y: -0.0982701148167725)
        self.welcome.layer.insertSublayer(gradientOne, at: 0)
        
        // logoIV
        self.logoIV.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.logoIV.layer.shadowRadius = 25.0
        self.logoIV.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.logoIV.layer.shadowOpacity = 1.0
        self.logoIV.layer.masksToBounds = false
        
        // logIn
        self.logIn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.logIn.layer.shadowRadius = 25.0
        self.logIn.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.logIn.layer.shadowOpacity = 1.0
        self.logIn.layer.masksToBounds = false
        self.logIn.layer.cornerRadius = 2.0
        
        // signUp
        self.signUp.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.signUp.layer.shadowRadius = 25.0
        self.signUp.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.signUp.layer.shadowOpacity = 1.0
        self.signUp.layer.masksToBounds = false
        self.signUp.layer.cornerRadius = 2.0
    }

    fileprivate func setupGestureRecognizers() {

    }

    fileprivate func setupText() {

    }

    fileprivate func setupLocalization() {

    }

    fileprivate func setupData() {

    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status bar

    override var prefersStatusBarHidden: Bool {

        return true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {

        return .default
    }
}









