//
//  ItemsSelectionViewController.swift
//  HackathonChallenge
//
//  Created by Guilherme Antunes on 23/06/18.
//  Copyright © 2018 Guilherme Antunes. All rights reserved.
//

import UIKit
import RxSwift
import RxDataSources

struct SectionModel {
    
    let title: String
    var data: [Item]
}

extension SectionModel: SectionModelType {
    typealias Item = Dish
    var items: [Dish] { return data }
    
    init(original: SectionModel, items: [Item]) {
        self = original
        self.data = items
    }
}

class ItemsSelectionViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var collectionView: UICollectionView?
    // MARK: - Properties
    internal let viewModel = ItemsSelectionViewModel()
    private var sections : Variable = Variable<[SectionModel]>([])
    private let disposeBag = DisposeBag()
    private let dataSource = RxCollectionViewSectionedReloadDataSource<SectionModel>( configureCell: { (dataSource, collectionView, indexPath, item) -> UICollectionViewCell in
        let cell : ItemCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        
        cell.setupWithDish(item)
        
        return cell
    })
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchItemsList()
        setupController()
    }
    
    // MARK: - Private Methods
    func setupController() {
        if viewModel.error == nil {
            collectionView?.backgroundColor = UIColor.healthyYellow()
            title = R.string.titles.itemsSelectionTitle()
            viewModel.categories.value?.forEach({ (category) in
                self.sections.value.append(SectionModel(title: category.name!, data: category.dishes))
            })
            guard let collection = collectionView else { return }
            let observableSection : Observable = sections.asObservable()
            observableSection
                .bind(to: collection.rx.items(dataSource: dataSource))
                .disposed(by: disposeBag)
        } else {
            // setup empty state or error screen
        }
        
    }
    
    // MARK: - Actions
    
}

extension ItemsSelectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let margin = 10
        
        let width = (UIScreen.main.bounds.width - CGFloat(2*margin))/2
        
        let size = CGSize(width: width,
                          height: (width*1.41) + 30)
        
        return size
    }
}

