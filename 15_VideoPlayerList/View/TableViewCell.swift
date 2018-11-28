//
//  TableViewCell.swift
//  15_UsedKnowledgeCounter
//
//  Created by shota ito on 28/11/2018.
//  Copyright © 2018 shota ito. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var thumbnailView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    
    var app: App! {
        didSet{
            updateUI()
        }
    }
    
    func updateUI() {
        
        thumbnailView.image = UIImage(named: app.thumbnailName)
        appNameLabel.text = app.appName
        thumbnailView.layer.cornerRadius = 8.0
        thumbnailView.layer.masksToBounds = true
        
//        bgView.backgroundColor = UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
//        contentView.backgroundColor = .black
//        bgView.layer.cornerRadius = 10.0
//        bgView.layer.masksToBounds = false // otherwise it cannot has shadow
//        bgView.layer.shadowColor = UIColor.white.withAlphaComponent(0.2).cgColor
//        bgView.layer.shadowOffset = CGSize(width: 0, height: 0)
//        bgView.layer.shadowOpacity = 0.8
    }
}
