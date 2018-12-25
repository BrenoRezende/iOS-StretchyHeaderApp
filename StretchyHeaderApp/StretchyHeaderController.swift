//
//  StretchyHeaderController.swift
//  StretchyHeaderApp
//
//  Created by Breno Rezende on 25/12/18.
//  Copyright © 2018 Breno Rezende. All rights reserved.
//

import UIKit

class StretchyHeaderController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    private let customCell = "customCell"
    private let customHeader = "customHeader"
    private let padding: CGFloat = 16
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        customizeLayout()
        
        // register header
        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: customHeader)
        
        // register cell
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: customCell)
    }
    
    // Header methods
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: customHeader
            , for: indexPath)
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.bounds.width, height: 300)
    }
    
    // Cells methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customCell, for: indexPath)
        
        cell.backgroundColor = .black
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: (view.bounds.width - (2 * padding)), height: 50)
    }
    
    // Layout customization
    private func customizeLayout() {
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
            layout.minimumLineSpacing = padding
        }
        
        collectionView.backgroundColor = .white
    }
}
