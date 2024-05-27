//
//  StoryCollectionViewCell.swift
//  instargram
//
//  Created by 임소은 on 5/19/24.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var viewImageViewBackground: UIView!
    
    @IBOutlet weak var imageViewUserProfile: UIImageView!
    @IBOutlet weak var viewUserProfileBackgorund: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewImageViewBackground.layer.cornerRadius = 24
        viewUserProfileBackgorund.layer.cornerRadius = 23.5
        imageViewUserProfile.layer.cornerRadius = 22.5
        imageViewUserProfile.clipsToBounds = true
        
    }

}
