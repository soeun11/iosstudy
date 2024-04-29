//
//  FeddTableViewCell.swift
//  Protocol
//
//  Created by 임소은 on 4/29/24.
//

import UIKit

class FeddTableViewCell: UITableViewCell {
    

    @IBOutlet weak var userImageView: UIImageView!
    
    
    @IBOutlet weak var sellingName: UITextField!
    
    @IBOutlet weak var livingthere: UITextField!
    
    
    @IBOutlet weak var messageButton: UIButton!
    
    @IBOutlet weak var heartNumberButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userImageView.layer.cornerRadius = 10.0
        userImageView.clipsToBounds = true

        
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
