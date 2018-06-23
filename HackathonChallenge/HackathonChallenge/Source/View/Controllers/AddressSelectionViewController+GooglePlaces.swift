//
//  AddressSelectionViewController+GooglePlaces.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import Foundation
import GooglePlaces

extension AddressSelectionViewController : GMSAutocompleteViewControllerDelegate {
    func showGMSController() {
        let gmsViewController = GMSAutocompleteViewController()
        gmsViewController.delegate = self
        present(gmsViewController, animated: true, completion: nil)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        addressTextView?.text = place.formattedAddress
        dismiss(animated: true, completion: nil)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        print(error)
        dismiss(animated: true, completion: nil)
    }
    
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        print("Canceled!")
        dismiss(animated: true, completion: nil)
    }
}
