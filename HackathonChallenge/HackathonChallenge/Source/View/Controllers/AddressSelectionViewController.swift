//
//  AddressSelectionViewController.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import UIKit
import GooglePlaces

class AddressSelectionViewController: UIViewController, Identifiable {

    // MARK: - Outlets
    @IBOutlet weak var addressTextView: UITextView?
    @IBOutlet weak var forwardButton: UIButton?
    
    // MARK: - Properties
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
        setupButton()
    }
    
    // MARK: - Private Methods
    private func setupController() {
        view.backgroundColor = UIColor.healthyGreen()
    }
    
    private func setupButton() {
        forwardButton?.layer.borderWidth = 10
        forwardButton?.layer.cornerRadius = 10
        forwardButton?.layer.borderColor = UIColor.white.cgColor
    }
    
    // MARK: - Actions
    @IBAction func addAddress(_ sender: UIBarButtonItem) {
        showGMSController()
    }
}
