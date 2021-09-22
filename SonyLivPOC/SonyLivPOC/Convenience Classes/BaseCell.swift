//
//  BaseCell.swift
//  SonyLivPOC
//
//  Created by Ankit Bhardwaj on 22/09/21.
//

import UIKit

class BaseCell: UITableViewCell {
    
    func setupViews() {
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
