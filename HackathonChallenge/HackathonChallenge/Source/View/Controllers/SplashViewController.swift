//
//  SplashViewController.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import UIKit
import Rswift
import Lottie

class SplashViewController: UIViewController {

    // MARK: - Outlets
    private var animationView : LOTAnimationView?
    
    // MARK: - Properties
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
        playInitialAnimation()
    }
    
    // MARK: - Private Methods
    private func playInitialAnimation() {
        guard let filePath = R.file.noodlesJson.path() else { return }
        animationView = LOTAnimationView(filePath: filePath)
        animationView?.loopAnimation = false
        animationView?.animationSpeed = 2.0
        animationView?.frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: 220, height: 200)
        animationView?.center = view.center
        guard let lottieView = animationView else { return }
        view.addSubview(lottieView)
        view.bringSubview(toFront: lottieView)
        lottieView.play { (success) in
            if success {
                self.performSegue(withIdentifier: AddressSelectionViewController.segueIdentifier, sender: self)
            }
        }
    }
    
    private func setupController() {
        view.backgroundColor = UIColor.healthyGreen()
    }
    
    // MARK: - Actions

}
