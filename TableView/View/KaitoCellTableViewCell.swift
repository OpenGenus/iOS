//
//  KaitoCellTableViewCell.swift
//  TableView
//
//  Created by Sai Balaji on 07/03/21.
//

import UIKit

class KaitoCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var TheifImageView: UIImageView!
    
    @IBOutlet weak var Namelbl: UILabel!
    
    
    func updateCell(imgname: String,name: String)
    {
        self.TheifImageView.image = UIImage(named: imgname)
        self.Namelbl.text = name
    }
    
}
