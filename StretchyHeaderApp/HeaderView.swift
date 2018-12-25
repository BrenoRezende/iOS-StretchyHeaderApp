//
//  HeaderView.swift
//  StretchyHeaderApp
//
//  Created by Breno Rezende on 25/12/18.
//  Copyright © 2018 Breno Rezende. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
