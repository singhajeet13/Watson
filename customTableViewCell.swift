//
//  customTableViewCell.swift
//  WatsonConvo
//
//  Created by API_Server on 19/10/16.
//  Copyright © 2016 Administrator. All rights reserved.
//
import UIKit

class customTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var message: UITextView!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
