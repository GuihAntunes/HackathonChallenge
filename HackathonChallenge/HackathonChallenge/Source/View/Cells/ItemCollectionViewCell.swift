//
//  ItemCollectionViewCell.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import UIKit
import AlamofireImage

class ItemCollectionViewCell: UICollectionViewCell, Identifiable {
    
    // MARK: - Outlets
    @IBOutlet weak var dishImage: UIImageView?
    
    @IBOutlet weak var dishNameLabel: UILabel?
    
    // MARK: - Public Methods
    public func setupWithDish(_ dish : Dish) {
        setupImageView()
        dishNameLabel?.text = dish.name
        guard let url = URL(string: dish.imageUrlString ?? "") else { return }
        setImageWith(url: url)
    }
    
    // MARK: - Private Methods
    private func setupImageView() {
        layer.cornerRadius = 10
        clipsToBounds = true
        dishImage?.layer.cornerRadius = 10
        dishImage?.clipsToBounds = true
        dishImage?.contentMode = .scaleAspectFill
    }
    
    private func setImageWith(url : URL) {
        dishImage?.af_setImage(withURL: url, progressQueue: .global(), imageTransition: .curlDown(0.5), runImageTransitionIfCached: false, completion: nil)
    }
    
}
